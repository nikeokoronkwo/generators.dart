import 'package:generator/src/common/visitors.dart';
import 'package:meta/meta.dart';

@optionalTypeArgs
abstract class SpecVisitor<T> implements BaseSpecVisitor<T> {
  const SpecVisitor._();
}