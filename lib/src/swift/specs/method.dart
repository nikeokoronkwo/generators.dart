import 'package:built_value/built_value.dart';
import 'package:generator/src/swift/base.dart';
import 'package:meta/meta.dart';
import 'package:generator/src/swift/mixins/generics.dart';


part 'method.g.dart';

/// A Swift Method or Function
@immutable
abstract class Method extends Object 
  with HasDecorators, HasGenerics, HasSwiftDocc
  implements Built<Method, MethodBuilder>, Spec {
  factory Method([void Function(MethodBuilder)? updates]) = _$Method;

  Method._();

  /// name of the method
  String get name;
}

abstract class MethodBuilder extends Object 
  with HasDecoratorsBuilder
  implements Builder<Method, MethodBuilder> {
  
}

abstract class Parameter extends Objec
