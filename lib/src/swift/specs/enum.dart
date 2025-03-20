

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:generator/src/swift/base.dart';
import 'package:generator/src/swift/mixins/decorators.dart';
import 'package:generator/src/swift/mixins/generics.dart';
import 'package:generator/src/swift/mixins/swiftdocc.dart';
import 'package:generator/src/swift/specs/expression.dart';
import 'package:generator/src/swift/specs/reference.dart';
import 'package:meta/meta.dart';

part 'enum.g.dart';

@immutable
abstract class Enum extends Object
  with HasDecorators, HasSwiftDocc, HasGenerics
  implements Built<Enum, EnumBuilder>, Spec {
  factory Enum([void Function(EnumBuilder) updates]) = _$Enum;

  Enum._();

  String get name;

  /// Whether the enum is indirect
  /// 
  /// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/#Recursive-Enumerations
  bool get indirect;

  /// The raw, underlying type
  Reference get raw;

  // TODO: Constructor

  // TODO: Nested Declaration

  // TODO: Methods

  // TODO: Fields

  BuiltList<EnumValue> get values;

  BuiltList<Reference> get conformsTo;

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<Reference> get types;

  @override
  BuiltList<String> get docs;
}

abstract class EnumBuilder extends Object
  with HasDecoratorsBuilder, HasSwiftDoccBuilder, HasGenericsBuilder
    implements Builder<Enum, EnumBuilder> {
  factory EnumBuilder() = _$EnumBuilder;

  EnumBuilder._();

  String? name;

  bool? indirect;

  ListBuilder<EnumValue> values = ListBuilder<EnumValue>();

  ListBuilder<Reference> conformsTo = ListBuilder<Reference>();

  @override
  ListBuilder<Expression> decorators = ListBuilder<Expression>();

  @override
  ListBuilder<Reference> types = ListBuilder<Reference>();

  @override
  ListBuilder<String> docs = ListBuilder<String>();
}

@immutable
abstract class EnumValue extends Object
    with HasDecorators, HasSwiftDocc, HasGenerics
    implements Built<EnumValue, EnumValueBuilder> {
  factory EnumValue([void Function(EnumValueBuilder) updates]) = _$EnumValue;

  EnumValue._();

  String get name;

  bool get indirect;

  /// Arguments if this is an enum that contains arguments
  BuiltList<Reference> get arguments;

  /// The value assigned to the enum
  Expression? get value;

  @override
  BuiltList<Expression> get decorators;

  @override
  BuiltList<Reference> get types;

  @override
  BuiltList<String> get docs;
}

abstract class EnumValueBuilder extends Object
    with HasDecoratorsBuilder, HasSwiftDoccBuilder, HasGenericsBuilder
    implements Builder<EnumValue, EnumValueBuilder> {
  factory EnumValueBuilder() = _$EnumValueBuilder;

  EnumValueBuilder._();

  String? name;

  bool? indirect;

}