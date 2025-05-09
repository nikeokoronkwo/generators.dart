import 'package:built_collection/built_collection.dart';
import 'package:generator/src/javascript/specs/expression.dart';

/// A type of AST node that can have metadata [decorators].
abstract mixin class HasDecorators {
  /// Annotations as metadata on the node.
  BuiltList<Expression> get decorators;
}

/// Compliment to the [HasDecorators] mixin for metadata [decorators].
abstract mixin class HasDecoratorsBuilder {
  /// Annotations as metadata on the node.
  abstract ListBuilder<Expression> decorators;
}
