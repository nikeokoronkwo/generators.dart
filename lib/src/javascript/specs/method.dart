import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:generator/src/javascript/base.dart';
import 'package:generator/src/javascript/mixins/decorators.dart';
import 'package:generator/src/javascript/mixins/generics.dart';
import 'package:generator/src/javascript/mixins/jsdoc.dart';
import 'package:generator/src/javascript/specs/expression.dart';
import 'package:generator/src/javascript/specs/reference.dart';
import 'package:generator/src/javascript/visitors.dart';
import 'package:meta/meta.dart';

part 'method.g.dart';

@immutable
abstract class Method extends Object
    with HasDecorators, HasGenerics, HasJSDoc
    implements Built<Method, MethodBuilder>, Spec {
  factory Method([void Function(MethodBuilder) updates]) = _$Method;

  factory Method.returnsVoid([void Function(MethodBuilder)? updates]) =>
      Method((b) {
        if (updates != null) {
          updates(b);
        }
        b.returns = null;
      });

  Method._();

  /// Name of the method or function.
  ///
  /// May be `null` when being used as a [closure].
  String? get name;

  /// Whether to export the given function
  bool get export;

  /// Whether the given method is to be declared 
  bool? get declare;

  /// Whether this method is a simple lambda expression
  bool? get lambda;

  /// Whether the given method is asynchronous
  bool get async;

  /// The access modifier for the given method
  AccessModifier? get modifier;

  /// Whether this is a getter or setter.
  MethodType? get type;

  Reference? get returns;

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<String> get docs;

  @override
  BuiltList<Reference> get types;

  /// parameters.
  BuiltList<Parameter> get parameters;

  @override
  R accept<R>(
    SpecVisitor<R> visitor, [
    R? context,
  ]) =>
      visitor.visitMethod(this, context);
}

abstract class MethodBuilder extends Object
    with HasDecoratorsBuilder, HasGenericsBuilder, HasJSDocBuilder
    implements Builder<Method, MethodBuilder> {
  factory MethodBuilder() = _$MethodBuilder;

  MethodBuilder._();

  @override
  void update(void Function(MethodBuilder)? updates) {
    updates?.call(this);
  }

  /// Name of the method or function.
  ///
  /// May be `null` when being used as a [closure].
  String? name;

  /// Whether to export the given function
  /// 
  /// It can only be true if it is top level
  bool export = false;

  /// Whether the given method is to be declared 
  bool? declare = false;

  /// Whether this method is a simple lambda expression
  bool? lambda;

  /// Whether the given method is asynchronous
  bool async = false;

  /// The access modifier for the given method
  AccessModifier? modifier;

  /// Whether this is a getter or setter.
  MethodType? type;

  Reference? returns;

  @override
  ListBuilder<Expression> decorators = ListBuilder<Expression>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();

  /// Optional parameters.
  ListBuilder<Parameter> parameters = ListBuilder<Parameter>();
}

abstract class Parameter extends Object
    with HasDecorators, HasGenerics, HasJSDoc
    implements Built<Parameter, ParameterBuilder> {
  factory Parameter([void Function(ParameterBuilder) updates]) = _$Parameter;

  Parameter._();

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<String> get docs;

  @override
  BuiltList<Reference> get types;
}

abstract class ParameterBuilder extends Object
    with HasDecoratorsBuilder, HasGenericsBuilder, HasJSDocBuilder
    implements Builder<Parameter, ParameterBuilder> {
  factory ParameterBuilder() = _$ParameterBuilder;

  ParameterBuilder._();

  @override
  void update(void Function(ParameterBuilder)? updates) {
    updates?.call(this);
  }

  @override
  ListBuilder<Expression> decorators = ListBuilder<Expression>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();
}

enum MethodType {
  getter,
  setter,
}

enum AccessModifier {
  private,
  protected,
  public
}