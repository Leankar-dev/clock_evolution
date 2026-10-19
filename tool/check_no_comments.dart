import 'dart:io';

final _generated = RegExp(r'(\.g\.dart|\.freezed\.dart|[\\/]generated[\\/])');
final _stringLiteral = RegExp(
  r'''r?("""[\s\S]*?"""|\x27\x27\x27[\s\S]*?\x27\x27\x27|"(?:\\.|[^"\\\n])*"|\x27(?:\\.|[^\x27\\\n])*\x27)''',
);

Future<void> main(List<String> args) async {
  final roots = args.isEmpty ? ['lib', 'test', 'tool'] : args;
  final offenders = <String>[];
  for (final root in roots) {
    final dir = Directory(root);
    if (!dir.existsSync()) continue;
    await for (final entity in dir.list(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) continue;
      if (_generated.hasMatch(entity.path)) continue;
      final source = await entity.readAsString();
      final stripped = source.replaceAllMapped(
        _stringLiteral,
        (match) => ' ' * match.group(0)!.length,
      );
      final lines = stripped.split('\n');
      for (var i = 0; i < lines.length; i++) {
        if (lines[i].contains('//') || lines[i].contains('/*')) {
          offenders.add('${entity.path}:${i + 1}');
        }
      }
    }
  }
  if (offenders.isEmpty) {
    stdout.writeln('No comments found.');
    return;
  }
  offenders.forEach(stderr.writeln);
  exitCode = 1;
}
