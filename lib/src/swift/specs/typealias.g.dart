// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typealias.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeAlias extends TypeAlias {
  @override
  final String name;
  @override
  final Expression definition;
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<Reference> types;
  @override
  final BuiltList<String> docs;

  factory _$TypeAlias([void Function(TypeAliasBuilder)? updates]) =>
      (new TypeAliasBuilder()..update(updates)).build() as _$TypeAlias;

  _$TypeAlias._(
      {required this.name,
      required this.definition,
      required this.decorators,
      required this.types,
      required this.docs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'TypeAlias', 'name');
    BuiltValueNullFieldError.checkNotNull(
        definition, r'TypeAlias', 'definition');
    BuiltValueNullFieldError.checkNotNull(
        decorators, r'TypeAlias', 'decorators');
    BuiltValueNullFieldError.checkNotNull(types, r'TypeAlias', 'types');
    BuiltValueNullFieldError.checkNotNull(docs, r'TypeAlias', 'docs');
  }

  @override
  TypeAlias rebuild(void Function(TypeAliasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$TypeAliasBuilder toBuilder() => new _$TypeAliasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeAlias &&
        name == other.name &&
        definition == other.definition &&
        decorators == other.decorators &&
        types == other.types &&
        docs == other.docs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypeAlias')
          ..add('name', name)
          ..add('definition', definition)
          ..add('decorators', decorators)
          ..add('types', types)
          ..add('docs', docs))
        .toString();
  }
}

class _$TypeAliasBuilder extends TypeAliasBuilder {
  _$TypeAlias? _$v;

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
  Expression? get definition {
    _$this;
    return super.definition;
  }

  @override
  set definition(Expression? definition) {
    _$this;
    super.definition = definition;
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

  _$TypeAliasBuilder() : super._();

  TypeAliasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.name = $v.name;
      super.definition = $v.definition;
      super.decorators = $v.decorators.toBuilder();
      super.types = $v.types.toBuilder();
      super.docs = $v.docs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeAlias other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeAlias;
  }

  @override
  void update(void Function(TypeAliasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeAlias build() => _build();

  _$TypeAlias _build() {
    _$TypeAlias _$result;
    try {
      _$result = _$v ??
          new _$TypeAlias._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'TypeAlias', 'name'),
              definition: BuiltValueNullFieldError.checkNotNull(
                  definition, r'TypeAlias', 'definition'),
              decorators: decorators.build(),
              types: types.build(),
              docs: docs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'decorators';
        decorators.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'docs';
        docs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TypeAlias', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
