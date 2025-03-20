
import 'package:generator/src/kotlin/visitors.dart';

abstract class Spec {
  R accept<R>(SpecVisitor<R> visitor, [R? context]);
}