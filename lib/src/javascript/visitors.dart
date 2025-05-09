

import 'package:generators/src/javascript/specs/reference.dart';
import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> {
  const SpecVisitor._();

  T visitReference(Reference spec, [T? context]);
}