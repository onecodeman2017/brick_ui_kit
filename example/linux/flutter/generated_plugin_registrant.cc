//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <brick_ui_kit/brick_ui_kit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) brick_ui_kit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BrickUiKitPlugin");
  brick_ui_kit_plugin_register_with_registrar(brick_ui_kit_registrar);
}
