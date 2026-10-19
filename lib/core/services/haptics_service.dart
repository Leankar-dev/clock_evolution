import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'haptics_service.g.dart';

abstract interface class HapticsService {
  Future<void> light();
}

class SystemHapticsService implements HapticsService {
  const SystemHapticsService();

  @override
  Future<void> light() => HapticFeedback.lightImpact();
}

@Riverpod(keepAlive: true)
HapticsService haptics(Ref ref) => const SystemHapticsService();
