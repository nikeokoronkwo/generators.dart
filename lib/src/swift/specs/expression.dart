import 'package:generator/src/javascript/visitors.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/specs/code.dart';
import 'package:meta/meta.dart';

// TODO: Implement Expression
abstract class Expression implements Spec {
  const Expression();

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