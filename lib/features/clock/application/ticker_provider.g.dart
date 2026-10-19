// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(secondTicker)
final secondTickerProvider = SecondTickerProvider._();

final class SecondTickerProvider
    extends
        $FunctionalProvider<AsyncValue<DateTime>, DateTime, Stream<DateTime>>
    with $FutureModifier<DateTime>, $StreamProvider<DateTime> {
  SecondTickerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secondTickerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secondTickerHash();

  @$internal
  @override
  $StreamProviderElement<DateTime> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<DateTime> create(Ref ref) {
    return secondTicker(ref);
  }
}

String _$secondTickerHash() => r'89aed2207dcfce3c0d0fbcce4d42c6255b7fa7a5';
