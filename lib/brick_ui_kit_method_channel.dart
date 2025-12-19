import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'brick_ui_kit_platform_interface.dart';

/// An implementation of [BrickUiKitPlatform] that uses method channels.
class MethodChannelBrickUiKit extends BrickUiKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('brick_ui_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
