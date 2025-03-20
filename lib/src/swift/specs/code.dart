import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import 'package:generator/src/common/utils.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/specs/expression.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:generator/src/swift/visitors.dart';

part 'code.g.dart';

typedef Allocate = BaseAllocate<Reference>;

abstract class Code implements Spec {
  const factory Code(String code) = NormalCode._;

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitCode(this, context);

  @override
  String toString() => code;
}

class NormalCode implements Code {
  final String code;

  const NormalCode._(this.code);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitNormalCode(this, context);

  @override
  String toString() => code;
}

/// Represents a block of statements of Swift Code
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

  /// Adds an [expression] to [statements].
  void addExpression(Expression expression) {
    statements.add(expression.statement);
  }

  ListBuilder<Code> statements = ListBuilder<Code>();
}

abstract class CodeVisitor<T> implements SpecVisitor<T> {
  T visitBlock(Block code, [T? context]);
  T visitNormalCode(NormalCode code, [T? context]);
}
