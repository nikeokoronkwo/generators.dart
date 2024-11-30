import 'package:built_value/built_value.dart';
import 'package:generator/src/swift/base.dart';
import 'package:meta/meta.dart';

// part 'method.g.dart';

@immutable
abstract class Method extends Object implements Built<Method, MethodBuilder>, Spec {
  factory Method([void Function(MethodBuilder)? updates]) = _$Method;

  Method._();

  /// name of the method
  String get name;
}

abstract class MethodBuilder extends Object implements Builder<Method, MethodBuilder> {

}