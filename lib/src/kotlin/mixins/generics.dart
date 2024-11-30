import 'package:built_collection/built_collection.dart';
import 'package:generator/src/kotlin/specs/reference.dart';

abstract mixin class HasGenerics {
  BuiltList<Reference> get types;
}

abstract mixin class HasGenericsBuilder {
  abstract ListBuilder<Reference> types;
}
