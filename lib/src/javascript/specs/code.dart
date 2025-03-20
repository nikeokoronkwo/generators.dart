import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:generator/src/javascript/base.dart';
import 'package:generator/src/javascript/specs/expression.dart';
import 'package:generator/src/javascript/specs/reference.dart';
import 'package:generator/src/javascript/visitors.dart';

part 'code.g.dart';

/// Returns a scoped symbol to [Reference], with an import prefix if needed
typedef Allocate = String Function(Reference);

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

abstract class CodeVisitor<T> implements SpecVisitor<T> {
  T visitBlock(Block code, [T? context]);

  T visitStaticCode(StaticCode code, [T? context]);

  T visitScopedCode(ScopedCode code, [T? context]);
}

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

  BlockBuilder._();

  /// adds an [expression] to [statements]
  void addExpression(Expression expression) {
    statements.add(expression.statement);
  }

  ListBuilder<Code> statements = ListBuilder<Code>();
}

/// Static code as a string
class StaticCode implements Code {
  final String code;

  const StaticCode._(this.code);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitStaticCode(this, context);

  @override
  String toString() => code;
}

/// Code that is scoped to a specific import alias ('import * from "file.js" as a' => a)
class ScopedCode implements Code {
  final String Function(Allocate) code;

  const ScopedCode._(this.code);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitScopedCode(this, context);

  @override
  String toString() => code((ref) => ref.symbol!);
}
