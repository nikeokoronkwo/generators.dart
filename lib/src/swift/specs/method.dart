

import 'package:generators/src/swift/mixins/decorators.dart';
import 'package:generators/src/swift/mixins/generics.dart';
import 'package:generators/src/swift/mixins/swiftdocc.dart';
import 'package:meta/meta.dart';

@immutable
abstract class Method extends Object
    with HasDecorators, HasSwiftDocc, HasGenerics
    implements Built<Method, MethodBuilder>, Spec {
  factory Method([void Function(MethodBuilder) updates]) = _$Method;

  factory Method.returnsVoid([void Function(MethodBuilder)? updates]) =>
      Method((b) {
        if (updates != null) {
          updates(b);
        }
        b.returns = _$void;
      });
    }