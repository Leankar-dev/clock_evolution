// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_snapshot_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clockSnapshot)
final clockSnapshotProvider = ClockSnapshotProvider._();

final class ClockSnapshotProvider
    extends $FunctionalProvider<ClockSnapshot, ClockSnapshot, ClockSnapshot>
    with $Provider<ClockSnapshot> {
  ClockSnapshotProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clockSnapshotProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clockSnapshotHash();

  @$internal
  @override
  $ProviderElement<ClockSnapshot> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClockSnapshot create(Ref ref) {
    return clockSnapshot(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockSnapshot value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockSnapshot>(value),
    );
  }
}

String _$clockSnapshotHash() => r'b98c818359a166cb269cd51175bd3e99d75e350d';

@ProviderFor(dateHeader)
final dateHeaderProvider = DateHeaderProvider._();

final class DateHeaderProvider
    extends $FunctionalProvider<DateHeader, DateHeader, DateHeader>
    with $Provider<DateHeader> {
  DateHeaderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dateHeaderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dateHeaderHash();

  @$internal
  @override
  $ProviderElement<DateHeader> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DateHeader create(Ref ref) {
    return dateHeader(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateHeader value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateHeader>(value),
    );
  }
}

String _$dateHeaderHash() => r'545447efeb7fefddaf70b6ed587507432938ed66';
