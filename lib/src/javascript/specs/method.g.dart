// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Method extends Method {
  @override
  final String? name;
  @override
  final bool export;
  @override
  final bool? declare;
  @override
  final bool? lambda;
  @override
  final bool async;
  @override
  final AccessModifier? modifier;
  @override
  final MethodType? type;
  @override
  final Reference? returns;
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<String> docs;
  @override
  final BuiltList<Reference> types;
  @override
  final BuiltList<Parameter> parameters;

  factory _$Method([void Function(MethodBuilder)? updates]) =>
      (new MethodBuilder()..update(updates)).build() as _$Method;

  _$Method._(
      {this.name,
      required this.export,
      this.declare,
      this.lambda,
      required this.async,
      this.modifier,
      this.type,
      this.returns,
      required this.decorators,
      required this.docs,
      required this.types,
      required this.parameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(export, r'Method', 'export');
    BuiltValueNullFieldError.checkNotNull(async, r'Method', 'async');
    BuiltValueNullFieldError.checkNotNull(decorators, r'Method', 'decorators');
    BuiltValueNullFieldError.checkNotNull(docs, r'Method', 'docs');
    BuiltValueNullFieldError.checkNotNull(types, r'Method', 'types');
    BuiltValueNullFieldError.checkNotNull(parameters, r'Method', 'parameters');
  }

  @override
  Method rebuild(void Function(MethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$MethodBuilder toBuilder() => new _$MethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Method &&
        name == other.name &&
        export == other.export &&
        declare == other.declare &&
        lambda == other.lambda &&
        async == other.async &&
        modifier == other.modifier &&
        type == other.type &&
        returns == other.returns &&
        decorators == other.decorators &&
        docs == other.docs &&
        types == other.types &&
        parameters == other.parameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, export.hashCode);
    _$hash = $jc(_$hash, declare.hashCode);
    _$hash = $jc(_$hash, lambda.hashCode);
    _$hash = $jc(_$hash, async.hashCode);
    _$hash = $jc(_$hash, modifier.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, returns.hashCode);
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Method')
          ..add('name', name)
          ..add('export', export)
          ..add('declare', declare)
          ..add('lambda', lambda)
          ..add('async', async)
          ..add('modifier', modifier)
          ..add('type', type)
          ..add('returns', returns)
          ..add('decorators', decorators)
          ..add('docs', docs)
          ..add('types', types)
          ..add('parameters', parameters))
        .toString();
  }
}

class _$MethodBuilder extends MethodBuilder {
  _$Method? _$v;

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
  bool get export {
    _$this;
    return super.export;
  }

  @override
  set export(bool export) {
    _$this;
    super.export = export;
  }

  @override
  bool? get declare {
    _$this;
    return super.declare;
  }

  @override
  set declare(bool? declare) {
    _$this;
    super.declare = declare;
  }

  @override
  bool? get lambda {
    _$this;
    return super.lambda;
  }

  @override
  set lambda(bool? lambda) {
    _$this;
    super.lambda = lambda;
  }

  @override
  bool get async {
    _$this;
    return super.async;
  }

  @override
  set async(bool async) {
    _$this;
    super.async = async;
  }

  @override
  AccessModifier? get modifier {
    _$this;
    return super.modifier;
  }

  @override
  set modifier(AccessModifier? modifier) {
    _$this;
    super.modifier = modifier;
  }

  @override
  MethodType? get type {
    _$this;
    return super.type;
  }

  @override
  set type(MethodType? type) {
    _$this;
    super.type = type;
  }

  @override
  Reference? get returns {
    _$this;
    return super.returns;
  }

  @override
  set returns(Reference? returns) {
    _$this;
    super.returns = returns;
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
  ListBuilder<String> get docs {
    _$this;
    return super.docs;
  }

  @override
  set docs(ListBuilder<String> docs) {
    _$this;
    super.docs = docs;
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
  ListBuilder<Parameter> get parameters {
    _$this;
    return super.parameters;
  }

  @override
  set parameters(ListBuilder<Parameter> parameters) {
    _$this;
    super.parameters = parameters;
  }

  _$MethodBuilder() : super._();

  MethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.name = $v.name;
      super.export = $v.export;
      super.declare = $v.declare;
      super.lambda = $v.lambda;
      super.async = $v.async;
      super.modifier = $v.modifier;
      super.type = $v.type;
      super.returns = $v.returns;
      super.decorators = $v.decorators.toBuilder();
      super.docs = $v.docs.toBuilder();
      super.types = $v.types.toBuilder();
      super.parameters = $v.parameters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Method other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Method;
  }

  @override
  void update(void Function(MethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Method build() => _build();

  _$Method _build() {
    _$Method _$result;
    try {
      _$result = _$v ??
          new _$Method._(
              name: name,
              export: BuiltValueNullFieldError.checkNotNull(
                  export, r'Method', 'export'),
              declare: declare,
              lambda: lambda,
              async: BuiltValueNullFieldError.checkNotNull(
                  async, r'Method', 'async'),
              modifier: modifier,
              type: type,
              returns: returns,
              decorators: decorators.build(),
              docs: docs.build(),
              types: types.build(),
              parameters: parameters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'decorators';
        decorators.build();
        _$failedField = 'docs';
        docs.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'parameters';
        parameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Method', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Parameter extends Parameter {
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<String> docs;
  @override
  final BuiltList<Reference> types;

  factory _$Parameter([void Function(ParameterBuilder)? updates]) =>
      (new ParameterBuilder()..update(updates)).build() as _$Parameter;

  _$Parameter._(
      {required this.decorators, required this.docs, required this.types})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        decorators, r'Parameter', 'decorators');
    BuiltValueNullFieldError.checkNotNull(docs, r'Parameter', 'docs');
    BuiltValueNullFieldError.checkNotNull(types, r'Parameter', 'types');
  }

  @override
  Parameter rebuild(void Function(ParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$ParameterBuilder toBuilder() => new _$ParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Parameter &&
        decorators == other.decorators &&
        docs == other.docs &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Parameter')
          ..add('decorators', decorators)
          ..add('docs', docs)
          ..add('types', types))
        .toString();
  }
}

class _$ParameterBuilder extends ParameterBuilder {
  _$Parameter? _$v;

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
  ListBuilder<String> get docs {
    _$this;
    return super.docs;
  }

  @override
  set docs(ListBuilder<String> docs) {
    _$this;
    super.docs = docs;
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

  _$ParameterBuilder() : super._();

  ParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.decorators = $v.decorators.toBuilder();
      super.docs = $v.docs.toBuilder();
      super.types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Parameter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Parameter;
  }

  @override
  void update(void Function(ParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Parameter build() => _build();

  _$Parameter _build() {
    _$Parameter _$result;
    try {
      _$result = _$v ??
          new _$Parameter._(
              decorators: decorators.build(),
              docs: docs.build(),
              types: types.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'decorators';
        decorators.build();
        _$failedField = 'docs';
        docs.build();
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Parameter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
