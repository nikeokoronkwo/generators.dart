import 'package:built_collection/built_collection.dart';
import 'package:generators/src/kotlin/specs/expression.dart';

/// A type of AST node that can have metadata [annotations].
abstract mixin class HasAnnotations {
  /// Annotations as metadata on the node.
  BuiltList<Expression> get annotations;
}

/// Compliment to the [HasAnnotations] mixin for metadata [annotations].
abstract mixin class HasAnnotationsBuilder {
  /// Annotations as metadata on the node.
  abstract ListBuilder<Expression> annotations;
}
