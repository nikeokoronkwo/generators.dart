import 'package:built_value/built_value.dart';

import 'package:generator/src/common/utils.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:generator/src/swift/visitors.dart';

typedef Allocate = BaseAllocate<Reference>;

abstract class Code implements Spec {
  final String code;

  const Code(this.code);

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]) =>
      visitor.visitCode(this, context);

  @override
  String toString() => code;
}

abstract class Block implements Built<Block, BlockBuilder>, Code, Spec {
  factory Block([void Function(BlockBuilder) updates]) = _$Block;
}

abstract class BlockBuilder implements Builder<Block, BlockBuilder> {}

abstract class CodeVisitor<T> implements SpecVisitor<T> {
  T visitCode(Code code, [T? context]);

  T visitBlock(Block code, [T? context]);
}
