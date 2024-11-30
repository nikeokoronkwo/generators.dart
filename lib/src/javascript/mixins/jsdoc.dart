import 'package:built_collection/built_collection.dart';

abstract mixin class HasJSDoc {
  BuiltList<String> get docs;
}

abstract mixin class HasJSDocBuilder {
  abstract ListBuilder<String> docs;
}
