// ignore_for_file: prefer_const_declarations
import 'package:flutter/material.dart';
import 'package:tutapp/presentation/resources/theme_manager.dart';

import '../presentation/resources/routes_manager.dart';

class MyApp extends StatefulWidget {
  //const MyApp({super.key}); // default constructor
  // named constructor
  const MyApp._internal();
  static final MyApp _instance =
      const MyApp._internal(); // single instance or singleton
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
