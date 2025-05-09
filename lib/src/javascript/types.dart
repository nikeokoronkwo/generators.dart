/// These contain mixins used to differentiate between nodes/expressions used in TypeScript, JavaScript, and TS Type Declarations
/// 
/// - For JS only, do not use any
/// - For TS Decs only, use `IsTypes`
/// - For TS only, use `IsTypeScript`
// ignore_for_file: constant_identifier_names

library;

enum SyntaxMode {
  TypeScript, JavaScript, Types
}

base mixin SyntaxMixin {

}

/// Used for declarations that are only used in TypeScript
mixin IsTypescript {}

/// Used
mixin IsTypes {}