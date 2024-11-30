import 'package:built_collection/built_collection.dart';

abstract mixin class HasKDoc {
	  BuiltList<String> get docs;
}

abstract mixin class HasKDocBuilder {
	  abstract ListBuilder<String> docs;
}
