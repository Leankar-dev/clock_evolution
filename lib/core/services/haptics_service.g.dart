// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haptics_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(haptics)
final hapticsProvider = HapticsProvider._();

final class HapticsProvider
    extends $FunctionalProvider<HapticsService, HapticsService, HapticsService>
    with $Provider<HapticsService> {
  HapticsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hapticsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hapticsHash();

  @$internal
  @override
  $ProviderElement<HapticsService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HapticsService create(Ref ref) {
    return haptics(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HapticsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HapticsService>(value),
    );
  }
}

String _$hapticsHash() => r'397c72590afbddf6b71ad578de6ab5410896106b';
