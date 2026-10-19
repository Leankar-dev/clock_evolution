// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stopwatchRepository)
final stopwatchRepositoryProvider = StopwatchRepositoryProvider._();

final class StopwatchRepositoryProvider
    extends
        $FunctionalProvider<
          StopwatchRepository,
          StopwatchRepository,
          StopwatchRepository
        >
    with $Provider<StopwatchRepository> {
  StopwatchRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stopwatchRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stopwatchRepositoryHash();

  @$internal
  @override
  $ProviderElement<StopwatchRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  StopwatchRepository create(Ref ref) {
    return stopwatchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StopwatchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StopwatchRepository>(value),
    );
  }
}

String _$stopwatchRepositoryHash() =>
    r'f2fb4ffd79cb0340455e65ca2e71ccf6a9a6ea05';
