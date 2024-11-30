import 'package:built_value/built_value.dart';
import 'package:generator/src/common/utils.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:generator/src/swift/visitors.dart';

typedef Allocate = BaseAllocate<Reference>;

abstract class Code implements Spec {

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]);
}

abstract class Block 
  implements Built<Block, BlockBuilder>, Code, Spec {

}

abstract class BlockBuilder 
  implements Builder<Block, BlockBuilder> {

}