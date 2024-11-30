import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/specs/expression.dart';
import 'package:generator/src/swift/visitors.dart';
import 'package:meta/meta.dart';

// TODO: get expression
// TODO: get type
// TODO: const instance
// TODO: new instance
@immutable
class Reference extends Expression implements Spec {
  /// The name of the class, method or field.
  /// 
  /// May be `null` for references without symbols (e.g a function type without a symbol)
  final String? symbol;

  /// The import path uri where the given reference is from
  /// 
  /// May be omitted (`null`) to express the same library
  final String? uri;

  const Reference(this.symbol, [this.uri]);

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) => visitor.visitReference(this, context);

  @override
  int get hashCode => '$lib.$symbol'.hashCode;

  @override
  bool operator ==(Object other) => other is Reference && other.symbol == symbol && other.uri == uri;
}