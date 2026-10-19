// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch_view_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stopwatchViewModel)
final stopwatchViewModelProvider = StopwatchViewModelProvider._();

final class StopwatchViewModelProvider
    extends
        $FunctionalProvider<
          StopwatchViewModel?,
          StopwatchViewModel?,
          StopwatchViewModel?
        >
    with $Provider<StopwatchViewModel?> {
  StopwatchViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stopwatchViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stopwatchViewModelHash();

  @$internal
  @override
  $ProviderElement<StopwatchViewModel?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  StopwatchViewModel? create(Ref ref) {
    return stopwatchViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StopwatchViewModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StopwatchViewModel?>(value),
    );
  }
}

String _$stopwatchViewModelHash() =>
    r'733436261c2704518bd9d532cc5a32ef37de22f5';
