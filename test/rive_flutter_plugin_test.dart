import 'package:flutter_test/flutter_test.dart';
import 'package:rive_flutter_plugin/rive_flutter_plugin.dart';
import 'package:rive_flutter_plugin/rive_flutter_plugin_platform_interface.dart';
import 'package:rive_flutter_plugin/rive_flutter_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRiveFlutterPluginPlatform 
    with MockPlatformInterfaceMixin
    implements RiveFlutterPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RiveFlutterPluginPlatform initialPlatform = RiveFlutterPluginPlatform.instance;

  test('$MethodChannelRiveFlutterPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRiveFlutterPlugin>());
  });

  test('getPlatformVersion', () async {
    RiveFlutterPlugin riveFlutterPlugin = RiveFlutterPlugin();
    MockRiveFlutterPluginPlatform fakePlatform = MockRiveFlutterPluginPlatform();
    RiveFlutterPluginPlatform.instance = fakePlatform;
  
    expect(await riveFlutterPlugin.getPlatformVersion(), '42');
  });
}
