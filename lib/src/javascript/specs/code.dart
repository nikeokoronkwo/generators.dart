import 'package:built_value/built_value.dart';
import 'package:generator/src/common/utils.dart';
import 'package:generator/src/javascript/base.dart';
import 'package:generator/src/javascript/specs/reference.dart';
import 'package:generator/src/javascript/visitors.dart';

part 'code.g.dart';

/// Returns a scoped symbol to [Reference], with an import prefix if needed
typedef Allocate = BaseAllocate<Reference>;

/// Represents arbitrary JS Code (expressions or statements)
abstract class Code implements Spec {
  /// Creates a simple code based on a static string
  const factory Code(String code) = StaticCode._;

  /// Creates code that may be used by a provided [Allocator] for scoping
  const factory Code.scope(
    String Function(Allocate) scope,
  ) = ScopedCode._;

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]);
}

abstract class CodeVisitor<T> implements SpecVisitor<T> {}

/// blocks of statements of dart code
abstract class Block implements Built<Block, BlockBuilder>, Code, Spec {
	factory Block([void Function(BlockBuilder) updates]) = _$Block;

	factory Block.of(Iterable<Code> statements) =>
		Block((b) => b..statements.addAll(statements));

	Block._();

	@override
	R accept<R>(covariant CodeVisitor<R> visitor, [R? context]) =>
	  visitor.visitBlock(this, context);

    BuiltList<Code> get statements;
}

abstract class BlockBuilder implements Builder<Block, BlockBuilder> {
  factory BlockBuilder() = _$BlockBuilder;

  /// adds an [expression] to [statements]
  void addExpression(Expression expression) {
    statements.add(expression);
  }

  ListBuilder<Code> statements = ListBuilder<Code>();
}

class StaticCode implements Code {
  final String code;

  const StaticCode._(this.code);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitStaticCode(this, context);

  @override
  String toString() => code;
}

class ScopedCode implements Code {
  final String Function(Allocate) code;

  const ScopedCode._(this.code);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitScopedCode(this, context);

  @override
  String toString() => code((ref) => ref.symbol!);
}
