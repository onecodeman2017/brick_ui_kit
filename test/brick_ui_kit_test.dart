import 'package:flutter_test/flutter_test.dart';
import 'package:brick_ui_kit/brick_ui_kit.dart';
import 'package:brick_ui_kit/brick_ui_kit_platform_interface.dart';
import 'package:brick_ui_kit/brick_ui_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBrickUiKitPlatform
    with MockPlatformInterfaceMixin
    implements BrickUiKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BrickUiKitPlatform initialPlatform = BrickUiKitPlatform.instance;

  test('$MethodChannelBrickUiKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBrickUiKit>());
  });

  test('getPlatformVersion', () async {
    BrickUiKit brickUiKitPlugin = BrickUiKit();
    MockBrickUiKitPlatform fakePlatform = MockBrickUiKitPlatform();
    BrickUiKitPlatform.instance = fakePlatform;

    expect(await brickUiKitPlugin.getPlatformVersion(), '42');
  });
}
