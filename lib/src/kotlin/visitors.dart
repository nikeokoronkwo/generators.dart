import 'package:generators/src/kotlin/specs/reference.dart';
import 'package:generators/src/kotlin/specs/typealias.dart';
import 'package:generators/src/kotlin/specs/expression.dart';
import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> {
  const SpecVisitor._();

  T visitExpression(Expression spec, [T? context]);

  T visitTypeAlias(TypeAlias spec, [T? context]);

  T visitReference(Reference spec, [T? context]);
}
