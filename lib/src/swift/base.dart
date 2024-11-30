import 'package:generator/src/common/base.dart';
import 'package:generator/src/swift/visitors.dart';

abstract class Spec implements BaseSpec {
  R accept<R>(SpecVisitor<R> visitor, [R? context]);
}
