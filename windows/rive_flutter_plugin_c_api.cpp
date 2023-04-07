#include "include/rive_flutter_plugin/rive_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "rive_flutter_plugin.h"

void RiveFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  rive_flutter_plugin::RiveFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
