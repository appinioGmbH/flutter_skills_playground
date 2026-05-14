import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'ui/core/app.dart';

void main() {
  usePathUrlStrategy();
  enableFlutterDriverExtension();
  runApp(const App());
}
