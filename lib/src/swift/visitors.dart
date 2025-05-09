import 'package:generators/src/swift/specs/enum.dart';
import 'package:generators/src/swift/specs/expression.dart';
import 'package:generators/src/swift/specs/method.dart';
import 'package:generators/src/swift/specs/reference.dart';
import 'package:generators/src/swift/specs/typealias.dart';
import 'package:generators/src/swift/specs/code.dart';

import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> {
  const SpecVisitor._();

  T visitDecorator(Expression spec, [T? context]);

  T visitReference(Reference spec, [T? context]);

  T visitTypeAlias(TypeAlias spec, [T? context]);

  T visitTypeParameters(Iterable<Reference> specs, [T? context]);

  T visitMethod(Method spec, [T? context]);

  T visitEnum(Enum spec, [T? context]);
}
