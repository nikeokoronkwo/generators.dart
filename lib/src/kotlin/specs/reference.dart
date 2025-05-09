
import 'package:generators/src/kotlin/base.dart';
import 'package:generators/src/kotlin/specs/expression.dart';
import 'package:generators/src/kotlin/visitors.dart';
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

  /// The import/library where the given reference is from
  /// 
  /// May be omitted (`null`) to express the same library
  final String? lib;

  const Reference(this.symbol, [this.lib]);

  @override
  int get hashCode => '$lib.$symbol'.hashCode;

  @override
  bool operator ==(Object other) => other is Reference && other.symbol == symbol && other.lib == lib;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) => visitor.visitReference(this, context);
}