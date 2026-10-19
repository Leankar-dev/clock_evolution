import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final forbidden = RegExp(
    r'''import\s+['"]package:(flutter|flutter_riverpod|riverpod|riverpod_annotation|drift|drift_flutter)/''',
  );

  test('domain layers are framework free', () {
    final files = Directory('lib/features')
        .listSync(recursive: true)
        .whereType<File>()
        .where(
          (f) =>
              f.path.contains(
                '${Platform.pathSeparator}domain${Platform.pathSeparator}',
              ) &&
              f.path.endsWith('.dart'),
        );
    expect(files, isNotEmpty);
    final violations = [
      for (final file in files)
        if (forbidden.hasMatch(file.readAsStringSync())) file.path,
    ];
    expect(violations, isEmpty);
  });

  test('sources contain no comments', () async {
    final result = await Process.run('dart', [
      'run',
      'tool/check_no_comments.dart',
    ], runInShell: true);
    expect(result.exitCode, 0, reason: '${result.stderr}');
  });
}
