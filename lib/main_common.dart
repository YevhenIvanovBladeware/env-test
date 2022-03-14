import 'package:env_test/app_widget.dart';
import 'package:env_test/config_reader.dart';
import 'package:env_test/environment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory
  await ConfigReader.initialize();

  runApp(
    Provider.value(
      value: env==Environment.prod ? Colors.red : Colors.orange,
      child: const MyApp(),
    ),
  );
}
