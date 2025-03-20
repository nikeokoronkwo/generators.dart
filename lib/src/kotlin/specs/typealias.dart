import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:generator/src/kotlin/base.dart';
import 'package:generator/src/kotlin/mixins/decorators.dart';
import 'package:generator/src/kotlin/mixins/generics.dart';
import 'package:generator/src/kotlin/mixins/kdoc.dart';
import 'package:generator/src/kotlin/specs/expression.dart';
import 'package:generator/src/kotlin/specs/reference.dart';
import 'package:generator/src/kotlin/visitors.dart';
import 'package:meta/meta.dart';

part 'typealias.g.dart';

@immutable
abstract class TypeAlias extends Object
    with HasAnnotations, HasGenerics, HasKDoc
    implements Built<TypeAlias, TypeAliasBuilder>, Spec {
  factory TypeAlias([void Function(TypeAliasBuilder)? updates]) = _$TypeAlias;

  TypeAlias._();

  /// name of the typealias
  String get name;

  /// the typealias definition
  ///
  /// Typically a reference to a type or a function type
  Expression get definition;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) =>
      visitor.visitTypeAlias(this, context);
}

abstract class TypeAliasBuilder extends Object
    with HasAnnotationsBuilder, HasGenericsBuilder, HasKDocBuilder
    implements Builder<TypeAlias, TypeAliasBuilder> {
  factory TypeAliasBuilder() = _$TypeAliasBuilder;

  TypeAliasBuilder._();

  String? name;

  Expression? definition;

  @override
  ListBuilder<Expression> annotations = ListBuilder<Expression>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();
}
