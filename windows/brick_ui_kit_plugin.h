#ifndef FLUTTER_PLUGIN_BRICK_UI_KIT_PLUGIN_H_
#define FLUTTER_PLUGIN_BRICK_UI_KIT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace brick_ui_kit {

class BrickUiKitPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BrickUiKitPlugin();

  virtual ~BrickUiKitPlugin();

  // Disallow copy and assign.
  BrickUiKitPlugin(const BrickUiKitPlugin&) = delete;
  BrickUiKitPlugin& operator=(const BrickUiKitPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace brick_ui_kit

#endif  // FLUTTER_PLUGIN_BRICK_UI_KIT_PLUGIN_H_
