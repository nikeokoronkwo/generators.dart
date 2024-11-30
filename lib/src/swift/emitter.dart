import 'package:generator/src/swift/specs/reference.dart';
import 'package:generator/src/swift/specs/typedef.dart';
import 'package:generator/src/swift/visitors.dart';

class SwiftEmitter extends Object 
  with CodeEmitter
  implements SpecVisitor<StringSink> {
  @override
  StringSink visitReference(Reference spec, [StringSink? context]) {
    // TODO: implement visitReference
    throw UnimplementedError();
  }

  @override
  StringSink visitTypeAlias(TypeAlias spec, [StringSink? context]) {
    // TODO: implement visitTypeAlias
    throw UnimplementedError();
  }

}