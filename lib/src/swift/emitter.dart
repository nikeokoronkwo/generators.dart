import 'package:generators/src/swift/specs/reference.dart';
import 'package:generators/src/swift/specs/typealias.dart';
import 'package:generators/src/swift/visitors.dart';

class SwiftEmitter extends Object 
//  with CodeEmitter
  implements SpecVisitor<StringSink> {
  @override
  StringSink visitReference(Reference spec, [StringSink? context]) {
    // TODO: implement visitReference
    throw UnimplementedError();
  }

  @override
  StringSink visitTypeAlias(TypeAlias spec, [StringSink? context]) {
    // TODO: implement visitExpression
    final out = context ??= StringBuffer();
    // add documentation
    spec.docs.map((m) => m.startsWith("///") ? m : "///$m").forEach(out.writeln);
    // add annotations
    for (var a in spec.decorators) {
	    visitDecorator(a, out);
    }
    // write out typealias
    out.write('typealias ${spec.name}');
    // typealias type generics
    visitTypeParameters(spec.types.map((r) => r.type), out);
    out.write(' = ');
    // typealias definition
    spec.definition.accept(this, out);
    // no need for semicolon
    return out;
  }

}
