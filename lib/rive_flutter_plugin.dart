
import 'rive_flutter_plugin_platform_interface.dart';

class RiveFlutterPlugin {
  static showToast(String message) {
    return RiveFlutterPluginPlatform.showToast(message);
  }
}
