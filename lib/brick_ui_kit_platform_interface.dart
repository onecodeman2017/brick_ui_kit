import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'brick_ui_kit_method_channel.dart';

abstract class BrickUiKitPlatform extends PlatformInterface {
  /// Constructs a BrickUiKitPlatform.
  BrickUiKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static BrickUiKitPlatform _instance = MethodChannelBrickUiKit();

  /// The default instance of [BrickUiKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelBrickUiKit].
  static BrickUiKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BrickUiKitPlatform] when
  /// they register themselves.
  static set instance(BrickUiKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
