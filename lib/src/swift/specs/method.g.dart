// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Method extends Method {
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<String> docs;
  @override
  final BuiltList<Reference> types;
  @override
  final BuiltList<Parameter> parameters;
  @override
  final String? name;
  @override
  final Reference? returns;
  @override
  final bool static;
  @override
  final bool isClass;
  @override
  final bool nonisolating;
  @override
  final AccessModifier? modifier;
  @override
  final bool mutating;
  @override
  final bool async;
  @override
  final bool throws;
  @override
  final Code? body;

  factory _$Method([void Function(MethodBuilder)? updates]) =>
      (new MethodBuilder()..update(updates)).build() as _$Method;

  _$Method._(
      {required this.decorators,
      required this.docs,
      required this.types,
      required this.parameters,
      this.name,
      this.returns,
      required this.static,
      required this.isClass,
      required this.nonisolating,
      this.modifier,
      required this.mutating,
      required this.async,
      required this.throws,
      this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(decorators, r'Method', 'decorators');
    BuiltValueNullFieldError.checkNotNull(docs, r'Method', 'docs');
    BuiltValueNullFieldError.checkNotNull(types, r'Method', 'types');
    BuiltValueNullFieldError.checkNotNull(parameters, r'Method', 'parameters');
    BuiltValueNullFieldError.checkNotNull(static, r'Method', 'static');
    BuiltValueNullFieldError.checkNotNull(isClass, r'Method', 'isClass');
    BuiltValueNullFieldError.checkNotNull(
        nonisolating, r'Method', 'nonisolating');
    BuiltValueNullFieldError.checkNotNull(mutating, r'Method', 'mutating');
    BuiltValueNullFieldError.checkNotNull(async, r'Method', 'async');
    BuiltValueNullFieldError.checkNotNull(throws, r'Method', 'throws');
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
        decorators == other.decorators &&
        docs == other.docs &&
        types == other.types &&
        parameters == other.parameters &&
        name == other.name &&
        returns == other.returns &&
        static == other.static &&
        isClass == other.isClass &&
        nonisolating == other.nonisolating &&
        modifier == other.modifier &&
        mutating == other.mutating &&
        async == other.async &&
        throws == other.throws &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, returns.hashCode);
    _$hash = $jc(_$hash, static.hashCode);
    _$hash = $jc(_$hash, isClass.hashCode);
    _$hash = $jc(_$hash, nonisolating.hashCode);
    _$hash = $jc(_$hash, modifier.hashCode);
    _$hash = $jc(_$hash, mutating.hashCode);
    _$hash = $jc(_$hash, async.hashCode);
    _$hash = $jc(_$hash, throws.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Method')
          ..add('decorators', decorators)
          ..add('docs', docs)
          ..add('types', types)
          ..add('parameters', parameters)
          ..add('name', name)
          ..add('returns', returns)
          ..add('static', static)
          ..add('isClass', isClass)
          ..add('nonisolating', nonisolating)
          ..add('modifier', modifier)
          ..add('mutating', mutating)
          ..add('async', async)
          ..add('throws', throws)
          ..add('body', body))
        .toString();
  }
}

class _$MethodBuilder extends MethodBuilder {
  _$Method? _$v;

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
  bool get static {
    _$this;
    return super.static;
  }

  @override
  set static(bool static) {
    _$this;
    super.static = static;
  }

  @override
  bool get isClass {
    _$this;
    return super.isClass;
  }

  @override
  set isClass(bool isClass) {
    _$this;
    super.isClass = isClass;
  }

  @override
  bool get nonisolating {
    _$this;
    return super.nonisolating;
  }

  @override
  set nonisolating(bool nonisolating) {
    _$this;
    super.nonisolating = nonisolating;
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
  bool get mutating {
    _$this;
    return super.mutating;
  }

  @override
  set mutating(bool mutating) {
    _$this;
    super.mutating = mutating;
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
  bool get throws {
    _$this;
    return super.throws;
  }

  @override
  set throws(bool throws) {
    _$this;
    super.throws = throws;
  }

  @override
  Code? get body {
    _$this;
    return super.body;
  }

  @override
  set body(Code? body) {
    _$this;
    super.body = body;
  }

  _$MethodBuilder() : super._();

  MethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.decorators = $v.decorators.toBuilder();
      super.docs = $v.docs.toBuilder();
      super.types = $v.types.toBuilder();
      super.parameters = $v.parameters.toBuilder();
      super.name = $v.name;
      super.returns = $v.returns;
      super.static = $v.static;
      super.isClass = $v.isClass;
      super.nonisolating = $v.nonisolating;
      super.modifier = $v.modifier;
      super.mutating = $v.mutating;
      super.async = $v.async;
      super.throws = $v.throws;
      super.body = $v.body;
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
              decorators: decorators.build(),
              docs: docs.build(),
              types: types.build(),
              parameters: parameters.build(),
              name: name,
              returns: returns,
              static: BuiltValueNullFieldError.checkNotNull(
                  static, r'Method', 'static'),
              isClass: BuiltValueNullFieldError.checkNotNull(
                  isClass, r'Method', 'isClass'),
              nonisolating: BuiltValueNullFieldError.checkNotNull(
                  nonisolating, r'Method', 'nonisolating'),
              modifier: modifier,
              mutating: BuiltValueNullFieldError.checkNotNull(
                  mutating, r'Method', 'mutating'),
              async: BuiltValueNullFieldError.checkNotNull(
                  async, r'Method', 'async'),
              throws: BuiltValueNullFieldError.checkNotNull(
                  throws, r'Method', 'throws'),
              body: body);
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
  final String? argumentLabel;
  @override
  final String name;
  @override
  final bool variardic;
  @override
  final Reference? type;
  @override
  final bool inout;
  @override
  final Code? defaultTo;
  @override
  final BuiltList<Expression> decorators;
  @override
  final BuiltList<String> docs;
  @override
  final BuiltList<Reference> types;

  factory _$Parameter([void Function(ParameterBuilder)? updates]) =>
      (new ParameterBuilder()..update(updates)).build() as _$Parameter;

  _$Parameter._(
      {this.argumentLabel,
      required this.name,
      required this.variardic,
      this.type,
      required this.inout,
      this.defaultTo,
      required this.decorators,
      required this.docs,
      required this.types})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Parameter', 'name');
    BuiltValueNullFieldError.checkNotNull(variardic, r'Parameter', 'variardic');
    BuiltValueNullFieldError.checkNotNull(inout, r'Parameter', 'inout');
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
        argumentLabel == other.argumentLabel &&
        name == other.name &&
        variardic == other.variardic &&
        type == other.type &&
        inout == other.inout &&
        defaultTo == other.defaultTo &&
        decorators == other.decorators &&
        docs == other.docs &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, argumentLabel.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, variardic.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, inout.hashCode);
    _$hash = $jc(_$hash, defaultTo.hashCode);
    _$hash = $jc(_$hash, decorators.hashCode);
    _$hash = $jc(_$hash, docs.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Parameter')
          ..add('argumentLabel', argumentLabel)
          ..add('name', name)
          ..add('variardic', variardic)
          ..add('type', type)
          ..add('inout', inout)
          ..add('defaultTo', defaultTo)
          ..add('decorators', decorators)
          ..add('docs', docs)
          ..add('types', types))
        .toString();
  }
}

class _$ParameterBuilder extends ParameterBuilder {
  _$Parameter? _$v;

  @override
  String? get argumentLabel {
    _$this;
    return super.argumentLabel;
  }

  @override
  set argumentLabel(String? argumentLabel) {
    _$this;
    super.argumentLabel = argumentLabel;
  }

  @override
  String get name {
    _$this;
    return super.name;
  }

  @override
  set name(String name) {
    _$this;
    super.name = name;
  }

  @override
  bool get variardic {
    _$this;
    return super.variardic;
  }

  @override
  set variardic(bool variardic) {
    _$this;
    super.variardic = variardic;
  }

  @override
  Reference? get type {
    _$this;
    return super.type;
  }

  @override
  set type(Reference? type) {
    _$this;
    super.type = type;
  }

  @override
  bool get inout {
    _$this;
    return super.inout;
  }

  @override
  set inout(bool inout) {
    _$this;
    super.inout = inout;
  }

  @override
  Code? get defaultTo {
    _$this;
    return super.defaultTo;
  }

  @override
  set defaultTo(Code? defaultTo) {
    _$this;
    super.defaultTo = defaultTo;
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

  _$ParameterBuilder() : super._();

  ParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.argumentLabel = $v.argumentLabel;
      super.name = $v.name;
      super.variardic = $v.variardic;
      super.type = $v.type;
      super.inout = $v.inout;
      super.defaultTo = $v.defaultTo;
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
              argumentLabel: argumentLabel,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Parameter', 'name'),
              variardic: BuiltValueNullFieldError.checkNotNull(
                  variardic, r'Parameter', 'variardic'),
              type: type,
              inout: BuiltValueNullFieldError.checkNotNull(
                  inout, r'Parameter', 'inout'),
              defaultTo: defaultTo,
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
