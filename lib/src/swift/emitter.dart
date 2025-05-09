import 'package:generators/src/swift/specs/code.dart';
import 'package:generators/src/swift/specs/expression.dart';
import 'package:generators/src/swift/specs/method.dart';
import 'package:generators/src/swift/specs/reference.dart';
import 'package:generators/src/swift/specs/typealias.dart';
import 'package:generators/src/swift/visitors.dart';
import 'package:meta/meta.dart';

class SwiftEmitter extends Object 
  with CodeEmitter
  implements SpecVisitor<StringSink> {
  @override
  StringSink visitReference(Reference spec, [StringSink? output]) {
    // TODO: implement visitReference
    throw UnimplementedError();
  }

  @override
  StringSink visitDecorator(Expression spec, [StringSink? output]) {
    (output ??= StringBuffer()).write('@');
    spec.accept(this, output);
    output.write(' ');
    return output;
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

  // TODO: Type Reference
  @override
  StringSink visitTypeParameters(Iterable<Reference> specs, [StringSink? context]) {
    var output = context ?? StringBuffer();
    if (specs.isNotEmpty) {
      output
        ..write('<')
        ..writeAll(specs.map((s) => s.accept(this)))
        ..write('>')
        ;
    }
    return output;
  }

  @override
  StringSink visitMethod(Method spec, [StringSink? context]) {
    final out = context ??= StringBuffer();

    // add documentation
    spec.docs.map((m) => m.startsWith("///") ? m : "///$m").forEach(out.writeln);

    // add annotations
    for (var a in spec.decorators) {
	    visitDecorator(a, out);
    }

    // write out access modifier
    if (spec.modifier != null) {
      switch (spec.modifier!) {
        case AccessModifier.fileprivate:
          out.write(' fileprivate ');
          break;
        case AccessModifier.private:
          out.write(' private ');
          break;
        case AccessModifier.public:
          out.write(' public ');
          break;
        case AccessModifier.internal:
          out.write(' internal ');
          break;
        case AccessModifier.open:
          out.write(' open ');
          break;
      }
    }
    
    // write out prefix function keywords
    if (spec.isClass) out.write(' class ');
    if (spec.mutating) out.write(' mutating ');
    if (spec.nonisolating) out.write(' nonisolated ');

    // write out func keyword and name
    out.write('func ');
    if (spec.name != null) out.write(spec.name);

    visitTypeParameters(spec.types.map((r) => r.type), out);
    out.write('(');
    if (spec.parameters.isNotEmpty) {
      for (final p in spec.parameters) {
        visitParameter(p, out);
      }
    }
    out.write(')');

    // write out suffix function keywords
    if (spec.async) out.write(' async ');
    if (spec.throws) out.write(' throws ');

    out.write('{');
    if (spec.body != null) spec.body!.accept(this, out);
    out.write('}');

    return out;
  }

  void visitParameter(
    Parameter spec,
    StringSink output
  ) {
    spec.docs.map((m) => m.startsWith("///") ? m : "///$m").forEach(output.writeln);

    // add annotations
    for (var a in spec.decorators) {
	    visitDecorator(a, output);
    }


    if (spec.argumentLabel != null) {
      output.write(spec.argumentLabel);
      if (spec.name != null) {
        output.write(' ${spec.name}');
      }
    } else {
      if (spec.name != null) {
        output.write('_ ');
        output.write(spec.name);
      } else {
        throw Exception('Cannot have argumentLabel and name as null');
      }
    }

    output.write(': ');
    if (spec.inout) output.write('inout ');

    spec.type.accept(this, output);
    output.write(' ');

    if (spec.defaultTo != null) {
      output.write(' = ');
      spec.defaultTo!.accept(this, output);
    }
  }

}

abstract mixin class CodeEmitter implements CodeVisitor<StringSink> {

  @override
  StringSink visitNormalCode(NormalCode code, [StringSink? output]) {
    output ??= StringBuffer();
    return output..write(code.code);
  }
}