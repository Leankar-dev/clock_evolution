// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch_elapsed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stopwatchElapsed)
final stopwatchElapsedProvider = StopwatchElapsedProvider._();

final class StopwatchElapsedProvider
    extends
        $FunctionalProvider<AsyncValue<Duration>, Duration, Stream<Duration>>
    with $FutureModifier<Duration>, $StreamProvider<Duration> {
  StopwatchElapsedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stopwatchElapsedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stopwatchElapsedHash();

  @$internal
  @override
  $StreamProviderElement<Duration> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Duration> create(Ref ref) {
    return stopwatchElapsed(ref);
  }
}

String _$stopwatchElapsedHash() => r'7155fabf0089260caf73a009591fd07b4efcae4b';
