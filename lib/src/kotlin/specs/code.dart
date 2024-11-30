import 'package:built_value/built_value.dart';
import 'package:generator/src/common/utils.dart';
import 'package:generator/src/kotlin/base.dart';
import 'package:generator/src/kotlin/specs/reference.dart';
import 'package:generator/src/kotlin/visitors.dart';

typedef Allocate = BaseAllocate<Reference>;

abstract class Code implements Spec {

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]);
}

abstract class Block implements Built<Block, BlockBuilder>, Code, Spec {

}