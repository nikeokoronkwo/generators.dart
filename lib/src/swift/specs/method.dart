import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:generators/src/swift/base.dart';
import 'package:generators/src/swift/mixins/decorators.dart';
import 'package:generators/src/swift/mixins/generics.dart';
import 'package:generators/src/swift/mixins/swiftdocc.dart';
import 'package:generators/src/swift/specs/code.dart';
import 'package:generators/src/swift/specs/expression.dart';
import 'package:generators/src/swift/specs/reference.dart';
import 'package:generators/src/swift/visitors.dart';
import 'package:meta/meta.dart';

part 'method.g.dart';

@immutable
abstract class Method extends Object
  with HasDecorators, HasSwiftDocc, HasGenerics
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

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<String> get docs;

  @override
  BuiltList<Reference> get types;

  /// The name of the method or function
  /// 
  /// If used as a closure, it may be null
  String? get name;

  /// The return type of the method
  /// 
  /// It is void by default, especially if null
  Reference? get returns;

  /// Whether this method is static
  bool get static;

  /// the parameters passed to the function
  BuiltList<Parameter> get parameters;

  /// Whether this method is a class method
  /// 
  /// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods#Type-Methods
  bool get isClass;

  /// Whether this method is `nonisolating`
  /// 
  bool get nonisolating;

  /// The access modifier of this function
  /// 
  /// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/
  AccessModifier? get modifier;

  /// Whether this function is mutating
  bool get mutating;

  /// Whether the function is asynchronous
  bool get async;

  /// Whether the function throws 
  bool get throws;

  /// Body of the method
  Code? get body;

  @override
  R accept<R>(
    SpecVisitor<R> visitor, [
    R? context,
  ]) =>
      visitor.visitMethod(this, context);
}

abstract class MethodBuilder extends Object
    with HasDecoratorsBuilder, HasGenericsBuilder, HasSwiftDoccBuilder
    implements Builder<Method, MethodBuilder> {
  factory MethodBuilder() = _$MethodBuilder;

  MethodBuilder._();

  @override
  void update(void Function(MethodBuilder)? updates) {
    updates?.call(this);
  }

  String? name;

  Reference? returns;

  /// Whether this method is static
  bool static = false;

  /// Whether this method is a class method
  /// 
  /// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods#Type-Methods
  bool isClass = false;

  /// Whether this method is `nonisolating`
  bool nonisolating = false;

  /// The access modifier of this function
  /// 
  /// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/
  AccessModifier? modifier;

  /// Whether this function is mutating
  bool mutating = false;

  /// Whether the function is asynchronous
  bool async = false;

  /// Whether the function throws 
  bool throws = false;

  /// Body of the method
  Code? body;

  ListBuilder<Parameter> parameters = ListBuilder<Parameter>();

  @override
  ListBuilder<Expression> decorators = ListBuilder<Expression>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();
}

enum AccessModifier {
  fileprivate,
  private,
  public,
  internal,
  open
}


abstract class Parameter with HasDecorators, HasSwiftDocc, HasGenerics
  implements Built<Parameter, ParameterBuilder> {
  factory Parameter([void Function(ParameterBuilder) updates]) = _$Parameter;

  Parameter._();

  /// The argument label for the parameter
  String? get argumentLabel;

  /// The name of the parameter
  String? get name;

  /// Whether this is a variadic argument
  bool get variardic;

  /// Type of the parameter;
  Reference get type;

  /// Whetehr this parameter is an `inout` parameter
  bool get inout;

  /// If not `null`, a default assignment if the parameter is optional.
  Code? get defaultTo;

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<String> get docs;

  @override
  BuiltList<Reference> get types;
} 

abstract class ParameterBuilder extends Object
    with HasDecoratorsBuilder, HasGenericsBuilder, HasSwiftDoccBuilder
    implements Builder<Parameter, ParameterBuilder> {
  factory ParameterBuilder() = _$ParameterBuilder;

  ParameterBuilder._();

  @override
  void update(void Function(ParameterBuilder)? updates) {
    updates?.call(this);
  }

  /// The argument label for the parameter
  String? argumentLabel;

  /// The name of the parameter
  String? name;

  /// Whether this is a variadic argument
  bool variardic = false;

  /// Type of the parameter;
  late final Reference type;

  /// Whetehr this parameter is an `inout` parameter
  bool inout = false;

  /// If not `null`, a default assignment if the parameter is optional.
  Code? defaultTo;

  @override
  ListBuilder<Expression> decorators = ListBuilder<Expression>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();
}

