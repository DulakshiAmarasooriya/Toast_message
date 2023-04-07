#ifndef FLUTTER_PLUGIN_RIVE_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_RIVE_FLUTTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace rive_flutter_plugin {

class RiveFlutterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RiveFlutterPlugin();

  virtual ~RiveFlutterPlugin();

  // Disallow copy and assign.
  RiveFlutterPlugin(const RiveFlutterPlugin&) = delete;
  RiveFlutterPlugin& operator=(const RiveFlutterPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace rive_flutter_plugin

#endif  // FLUTTER_PLUGIN_RIVE_FLUTTER_PLUGIN_H_
