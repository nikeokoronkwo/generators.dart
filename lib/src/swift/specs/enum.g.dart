// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Enum extends Enum {
  @override
  final String name;
  @override
  final bool indirect;
  @override
  final Reference? raw;
  @override
  final BuiltList<EnumValue> values;
  @override
  final BuiltList<Reference> conformsTo;
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<Reference> types;
  @override
  final BuiltList<String> docs;

  factory _$Enum([void Function(EnumBuilder)? updates]) =>
      (new EnumBuilder()..update(updates)).build() as _$Enum;

  _$Enum._(
      {required this.name,
      required this.indirect,
      this.raw,
      required this.values,
      required this.conformsTo,
      required this.decorators,
      required this.types,
      required this.docs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Enum', 'name');
    BuiltValueNullFieldError.checkNotNull(indirect, r'Enum', 'indirect');
    BuiltValueNullFieldError.checkNotNull(values, r'Enum', 'values');
    BuiltValueNullFieldError.checkNotNull(conformsTo, r'Enum', 'conformsTo');
    BuiltValueNullFieldError.checkNotNull(decorators, r'Enum', 'decorators');
    BuiltValueNullFieldError.checkNotNull(types, r'Enum', 'types');
    BuiltValueNullFieldError.checkNotNull(docs, r'Enum', 'docs');
  }

  @override
  Enum rebuild(void Function(EnumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$EnumBuilder toBuilder() => new _$EnumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Enum &&
        name == other.name &&
        indirect == other.indirect &&
        raw == other.raw &&
        values == other.values &&
        conformsTo == other.conformsTo &&
        decorators == other.decorators &&
        types == other.types &&
        docs == other.docs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, indirect.hashCode);
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jc(_$hash, conformsTo.hashCode);
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Enum')
          ..add('name', name)
          ..add('indirect', indirect)
          ..add('raw', raw)
          ..add('values', values)
          ..add('conformsTo', conformsTo)
          ..add('decorators', decorators)
          ..add('types', types)
          ..add('docs', docs))
        .toString();
  }
}

class _$EnumBuilder extends EnumBuilder {
  _$Enum? _$v;

  @override
  String? get name {
    _$this;
    return super.name;
  }

  @override
  set name(String? name) {
    _$this;
    super.name = name;
  }

  @override
  bool get indirect {
    _$this;
    return super.indirect;
  }

  @override
  set indirect(bool indirect) {
    _$this;
    super.indirect = indirect;
  }

  @override
  Reference? get raw {
    _$this;
    return super.raw;
  }

  @override
  set raw(Reference? raw) {
    _$this;
    super.raw = raw;
  }

  @override
  ListBuilder<EnumValue> get values {
    _$this;
    return super.values;
  }

  @override
  set values(ListBuilder<EnumValue> values) {
    _$this;
    super.values = values;
  }

  @override
  ListBuilder<Reference> get conformsTo {
    _$this;
    return super.conformsTo;
  }

  @override
  set conformsTo(ListBuilder<Reference> conformsTo) {
    _$this;
    super.conformsTo = conformsTo;
  }

  @override
  ListBuilder<Expression> get decorators {
    _$this;
    return super.decorators;
  }

  @override
  set decorators(ListBuilder<Expression> decorators) {
    _$this;
    super.decorators = decorators;
  }

  @override
  ListBuilder<Reference> get types {
    _$this;
    return super.types;
  }

  @override
  set types(ListBuilder<Reference> types) {
    _$this;
    super.types = types;
  }

  @override
  ListBuilder<String> get docs {
    _$this;
    return super.docs;
  }

  @override
  set docs(ListBuilder<String> docs) {
    _$this;
    super.docs = docs;
  }

  _$EnumBuilder() : super._();

  EnumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.name = $v.name;
      super.indirect = $v.indirect;
      super.raw = $v.raw;
      super.values = $v.values.toBuilder();
      super.conformsTo = $v.conformsTo.toBuilder();
      super.decorators = $v.decorators.toBuilder();
      super.types = $v.types.toBuilder();
      super.docs = $v.docs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Enum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Enum;
  }

  @override
  void update(void Function(EnumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Enum build() => _build();

  _$Enum _build() {
    _$Enum _$result;
    try {
      _$result = _$v ??
          new _$Enum._(
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'Enum', 'name'),
              indirect: BuiltValueNullFieldError.checkNotNull(
                  indirect, r'Enum', 'indirect'),
              raw: raw,
              values: values.build(),
              conformsTo: conformsTo.build(),
              decorators: decorators.build(),
              types: types.build(),
              docs: docs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
        _$failedField = 'conformsTo';
        conformsTo.build();
        _$failedField = 'decorators';
        decorators.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'docs';
        docs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Enum', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EnumValue extends EnumValue {
  @override
  final String name;
  @override
  final bool indirect;
  @override
  final BuiltList<Reference> arguments;
  @override
  final Expression? value;
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<Reference> types;
  @override
  final BuiltList<String> docs;

  factory _$EnumValue([void Function(EnumValueBuilder)? updates]) =>
      (new EnumValueBuilder()..update(updates)).build() as _$EnumValue;

  _$EnumValue._(
      {required this.name,
      required this.indirect,
      required this.arguments,
      this.value,
      required this.decorators,
      required this.types,
      required this.docs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'EnumValue', 'name');
    BuiltValueNullFieldError.checkNotNull(indirect, r'EnumValue', 'indirect');
    BuiltValueNullFieldError.checkNotNull(arguments, r'EnumValue', 'arguments');
    BuiltValueNullFieldError.checkNotNull(
        decorators, r'EnumValue', 'decorators');
    BuiltValueNullFieldError.checkNotNull(types, r'EnumValue', 'types');
    BuiltValueNullFieldError.checkNotNull(docs, r'EnumValue', 'docs');
  }

  @override
  EnumValue rebuild(void Function(EnumValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$EnumValueBuilder toBuilder() => new _$EnumValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumValue &&
        name == other.name &&
        indirect == other.indirect &&
        arguments == other.arguments &&
        value == other.value &&
        decorators == other.decorators &&
        types == other.types &&
        docs == other.docs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, indirect.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnumValue')
          ..add('name', name)
          ..add('indirect', indirect)
          ..add('arguments', arguments)
          ..add('value', value)
          ..add('decorators', decorators)
          ..add('types', types)
          ..add('docs', docs))
        .toString();
  }
}

class _$EnumValueBuilder extends EnumValueBuilder {
  _$EnumValue? _$v;

  @override
  String? get name {
    _$this;
    return super.name;
  }

  @override
  set name(String? name) {
    _$this;
    super.name = name;
  }

  @override
  bool? get indirect {
    _$this;
    return super.indirect;
  }

  @override
  set indirect(bool? indirect) {
    _$this;
    super.indirect = indirect;
  }

  @override
  ListBuilder<Reference> get arguments {
    _$this;
    return super.arguments;
  }

  @override
  set arguments(ListBuilder<Reference> arguments) {
    _$this;
    super.arguments = arguments;
  }

  @override
  Expression? get value {
    _$this;
    return super.value;
  }

  @override
  set value(Expression? value) {
    _$this;
    super.value = value;
  }

  @override
  ListBuilder<Expression> get decorators {
    _$this;
    return super.decorators;
  }

  @override
  set decorators(ListBuilder<Expression> decorators) {
    _$this;
    super.decorators = decorators;
  }

  @override
  ListBuilder<Reference> get types {
    _$this;
    return super.types;
  }

  @override
  set types(ListBuilder<Reference> types) {
    _$this;
    super.types = types;
  }

  @override
  ListBuilder<String> get docs {
    _$this;
    return super.docs;
  }

  @override
  set docs(ListBuilder<String> docs) {
    _$this;
    super.docs = docs;
  }

  _$EnumValueBuilder() : super._();

  EnumValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.name = $v.name;
      super.indirect = $v.indirect;
      super.arguments = $v.arguments.toBuilder();
      super.value = $v.value;
      super.decorators = $v.decorators.toBuilder();
      super.types = $v.types.toBuilder();
      super.docs = $v.docs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnumValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumValue;
  }

  @override
  void update(void Function(EnumValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnumValue build() => _build();

  _$EnumValue _build() {
    _$EnumValue _$result;
    try {
      _$result = _$v ??
          new _$EnumValue._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'EnumValue', 'name'),
              indirect: BuiltValueNullFieldError.checkNotNull(
                  indirect, r'EnumValue', 'indirect'),
              arguments: arguments.build(),
              value: value,
              decorators: decorators.build(),
              types: types.build(),
              docs: docs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        arguments.build();

        _$failedField = 'decorators';
        decorators.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'docs';
        docs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnumValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
