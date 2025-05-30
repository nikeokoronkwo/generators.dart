

import 'package:generators/src/javascript/specs/method.dart';
import 'package:generators/src/javascript/specs/reference.dart';
import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> {
  const SpecVisitor._();

  T visitReference(Reference spec, [T? context]);

  T visitMethod(Method spec, [T? context]);
}