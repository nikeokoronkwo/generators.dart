import 'package:built_collection/built_collection.dart';

abstract mixin class HasSwiftDocc {
  BuiltList<String> get docs;
}

abstract mixin class HasSwiftDoccBuilder {
  abstract ListBuilder<String> docs;
}