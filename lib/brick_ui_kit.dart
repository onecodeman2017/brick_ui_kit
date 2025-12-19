
import 'brick_ui_kit_platform_interface.dart';

class BrickUiKit {
  Future<String?> getPlatformVersion() {
    return BrickUiKitPlatform.instance.getPlatformVersion();
  }
}
