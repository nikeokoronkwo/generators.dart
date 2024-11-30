import 'package:generator/src/common/visitors.dart';
import 'package:generator/src/kotlin/specs/typealias.dart';
import 'package:generator/src/kotlin/specs/expression.dart';
import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> implements BaseSpecVisitor<T> {
  const SpecVisitor._();

  T visitExpression(Expression spec, [T? context]);

  T visitTypeAlias(TypeAlias spec, [T? context]);
}
