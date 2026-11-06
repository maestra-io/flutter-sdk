import 'package:flutter/material.dart';
import 'package:flutter_example/view/Example.dart';
import 'package:flutter_example/view_model/view_model.dart';
import 'package:mindbox/mindbox.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //https://developers.maestra.io/docs/initializing-the-sdk
  final config = Configuration(
      domain: "api.maestra.io",
      endpointIos: "YourProject.FlutterExample.IosApp",
      endpointAndroid: "YourProject.FlutterExample.AndroidApp",
      shouldCreateCustomer: true,
      subscribeCustomerIfCreated: true);

  Mindbox.instance.init(configuration: config);

  //https://developers.maestra.io/docs/flutter-sdk-methods
  Mindbox.instance.setLogLevel(logLevel: LogLevel.debug);

  ViewModel.requestPermissions();

  ViewModel.chooseInAppCallback(ChooseInappCallback.defaultInAppCallback);

  runApp(const Example());

}
