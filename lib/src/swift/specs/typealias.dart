import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/mixins/decorators.dart';
import 'package:generator/src/swift/mixins/generics.dart';
import 'package:generator/src/swift/mixins/swiftdocc.dart';
import 'package:generator/src/swift/specs/expression.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:generator/src/swift/visitors.dart';
import 'package:meta/meta.dart';

part 'typealias.g.dart';

@immutable
abstract class TypeAlias extends Object
    with HasDecorators, HasGenerics, HasSwiftDocc
    implements Built<TypeAlias, TypeAliasBuilder>, Spec {
  factory TypeAlias([void Function(TypeAliasBuilder)? updates]) = _$TypeAlias;

  TypeAlias._();

  /// name of the typealias
  String get name;

  /// type of the typealias
  ///
  /// Typically a reference to a type or a function type
  Expression get definition;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) {
    return visitor.visitTypeAlias(this, context);
  }
}

abstract class TypeAliasBuilder extends Object
    with HasDecoratorsBuilder, HasSwiftDoccBuilder, HasGenericsBuilder
    implements Builder<TypeAlias, TypeAliasBuilder> {
  factory TypeAliasBuilder() = _$TypeAliasBuilder;

  TypeAliasBuilder._();

  String? name;

  Expression? definition;

  @override
  ListBuilder<Expression> get decorators => ListBuilder<Expression>();

  @override
  ListBuilder<String> get docs => ListBuilder<String>();

  @override
  ListBuilder<Reference> get types => ListBuilder<Reference>();
}
