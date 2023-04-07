import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rive_flutter_plugin_platform_interface.dart';

/// An implementation of [RiveFlutterPluginPlatform] that uses method channels.
class MethodChannelRiveFlutterPlugin extends RiveFlutterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rive_flutter_plugin');

  static const MethodChannel _channel = MethodChannel('flutter_toast');

  static showToast(String message) {
    _channel.invokeMethod("showToast", {"message": message});
  }

}
