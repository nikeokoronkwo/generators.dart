import 'package:generator/src/swift/visitors.dart';

abstract class Spec {
  R accept<R>(SpecVisitor<R> visitor, [R? context]);
}
