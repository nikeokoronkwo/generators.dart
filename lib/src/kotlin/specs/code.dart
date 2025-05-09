import 'package:built_value/built_value.dart';
import 'package:generators/src/kotlin/base.dart';
import 'package:generators/src/kotlin/specs/reference.dart';
import 'package:generators/src/kotlin/visitors.dart';

typedef Allocate = String Function(Reference);

abstract class Code implements Spec {

  @override
  R accept<R>(covariant CodeVisitor<R> visitor, [R? context]);
}

abstract class CodeVisitor<T> implements SpecVisitor<T> {

}