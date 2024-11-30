import 'package:built_value/built_value.dart';
import 'package:generator/src/common/utils.dart';
import 'package:generator/src/javascript/base.dart';
import 'package:generator/src/javascript/specs/reference.dart';
import 'package:generator/src/javascript/visitors.dart';

typedef Allocate = BaseAllocate<Reference>;

abstract class Code implements Spec {

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]);
}

abstract class CodeVisitor<T> implements SpecVisitor<T> {
  
}

abstract class Block implements Built<Block, BlockBuilder>, Code, Spec {
  
}

abstract class BlockBuilder implements Builder<Block, BlockBuilder> {
  
}