
import 'package:generators/src/javascript/base.dart';
import 'package:generators/src/javascript/specs/code.dart';
import 'package:generators/src/javascript/visitors.dart';
import 'package:meta/meta.dart';

/// Represents a JS/TS expression
abstract class Expression implements Spec {
  const Expression();

  /// The expression as a valid [Code] block with a trailing `;`.
  Code get statement => ToCodeExpression(this, true);
}

class ToCodeExpression implements Code {
  final Expression code;

  /// Whether this code should be considered a _statement_.
  final bool isStatement;

  @visibleForTesting
  const ToCodeExpression(this.code, [this.isStatement = false]);

  @override
  R accept<R>(CodeVisitor<R> visitor, [R? context]) =>
      (visitor as ExpressionVisitor<R>).visitToCodeExpression(this, context);

  @override
  String toString() => code.toString();
}

abstract class ExpressionVisitor<T> implements SpecVisitor<T> {
  T visitToCodeExpression(ToCodeExpression code, [T? context]);
}