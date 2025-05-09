
import 'package:generators/src/kotlin/visitors.dart';

abstract class Spec {
  R accept<R>(SpecVisitor<R> visitor, [R? context]);
}