import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rive_flutter_plugin_method_channel.dart';

abstract class RiveFlutterPluginPlatform extends PlatformInterface {
  /// Constructs a RiveFlutterPluginPlatform.
  RiveFlutterPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static RiveFlutterPluginPlatform _instance = MethodChannelRiveFlutterPlugin();

  /// The default instance of [RiveFlutterPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelRiveFlutterPlugin].
  static RiveFlutterPluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RiveFlutterPluginPlatform] when
  /// they register themselves.
  static set instance(RiveFlutterPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  static showToast(String message) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
