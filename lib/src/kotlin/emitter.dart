

import 'package:generator/src/kotlin/specs/typealias.dart';
import 'package:generator/src/kotlin/visitors.dart';

class KotlinEmitter extends Object 
//  with CodeEmitter
  implements SpecVisitor<StringSink> {

  @override
  StringSink visitTypeAlias(TypeAlias spec, [StringSink? context]) {
    final out = output ??= StringBuffer();
    // add documentation
    visitKDoc(specs.docs, out);

    // add annotations
    for (var a in spec.annotations) {
	visitAnnotation(a, out);
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
