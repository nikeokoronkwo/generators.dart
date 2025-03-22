import 'package:built_value/built_value.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/mixins/generics.dart';
import 'package:generator/src/swift/specs/expression.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:meta/meta.dart';

part 'type_reference.g.dart';

@immutable
abstract class TypeReference extends Expression
    with HasGenerics
    implements Built<TypeReference, TypeReferenceBuilder>, Reference, Spec {
  factory TypeReference([
    void Function(TypeReferenceBuilder) updates,
  ]) = _$TypeReference;

  TypeReference._();

  @override
  String? get lib;

  @override
  String? get symbol;

  @override
  TypeReference get type => this;
}


abstract class TypeReferenceBuilder extends Object
    with HasGenericsBuilder
    implements Builder<TypeReference, TypeReferenceBuilder> {
  factory TypeReferenceBuilder() = _$TypeReferenceBuilder;

  TypeReferenceBuilder._();

  String? symbol;

  String? lib;
}