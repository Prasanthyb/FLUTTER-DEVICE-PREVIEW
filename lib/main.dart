import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart'; // Import the device_preview package
import './screens/home.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      builder: DevicePreview.appBuilder, // Wrap the MaterialApp with DevicePreview.appBuilder
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );
  }
}
