
import 'package:generators/src/javascript/visitors.dart';

abstract class Spec {
  R accept<R>(SpecVisitor<R> visitor, [R? context]);
}