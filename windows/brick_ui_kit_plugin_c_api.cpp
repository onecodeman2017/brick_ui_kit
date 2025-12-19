#include "include/brick_ui_kit/brick_ui_kit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "brick_ui_kit_plugin.h"

void BrickUiKitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  brick_ui_kit::BrickUiKitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
