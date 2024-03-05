import 'package:flutter/material.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:paroquia_sao_lourenco/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // OneSignal.shared.init('5ee0cfb4-754a-4294-ae73-f5d8ea7f4efd');
    // OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.none);
    // OneSignal.shared.setNotificationReceivedHandler((notification) { });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModularApp(module: AppModule()),
    );
  }
}