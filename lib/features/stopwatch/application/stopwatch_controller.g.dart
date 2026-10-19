// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StopwatchController)
final stopwatchControllerProvider = StopwatchControllerProvider._();

final class StopwatchControllerProvider
    extends $AsyncNotifierProvider<StopwatchController, StopwatchState> {
  StopwatchControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stopwatchControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stopwatchControllerHash();

  @$internal
  @override
  StopwatchController create() => StopwatchController();
}

String _$stopwatchControllerHash() =>
    r'c73dfba5abe19c8e2d015f6130bd1798ce5d8592';

abstract class _$StopwatchController extends $AsyncNotifier<StopwatchState> {
  FutureOr<StopwatchState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<StopwatchState>, StopwatchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<StopwatchState>, StopwatchState>,
              AsyncValue<StopwatchState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
