import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import "./helpers/export.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData.light(useMaterial3: true),
        dark: ThemeData.dark(useMaterial3: true),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp(
            title: 'Pruebas Físicas EC',
            debugShowCheckedModeBanner: false,
            initialRoute: "/welcome",
            routes: getRoutes(),
          );
        });
  }
}
