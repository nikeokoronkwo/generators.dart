import 'package:generators/src/swift/specs/reference.dart';
import 'package:generators/src/swift/specs/typealias.dart';
import 'package:generators/src/swift/specs/code.dart';

import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> {
  const SpecVisitor._();

  T visitReference(Reference spec, [T? context]);

  T visitTypeAlias(TypeAlias spec, [T? context]);

}
