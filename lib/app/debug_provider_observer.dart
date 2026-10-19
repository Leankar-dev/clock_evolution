import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

base class DebugProviderObserver extends ProviderObserver {
  const DebugProviderObserver();

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    if (kDebugMode) {
      developer.log(
        '${context.provider.name ?? context.provider.runtimeType}: $newValue',
        name: 'provider',
      );
    }
  }
}
