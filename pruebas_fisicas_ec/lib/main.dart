import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import "./helpers/export.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.savedThemeMode});

  final AdaptiveThemeMode? savedThemeMode; // Constructor Variable

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData.light(useMaterial3: true), // Light Theme Options
        dark: ThemeData.dark(useMaterial3: true), // Dark Theme Options
        initial: AdaptiveThemeMode.dark, // Inital theme when app starts
        builder: (theme, darkTheme) {
          return MaterialApp(
            theme: theme,
            darkTheme: darkTheme,
            title: 'Pruebas Físicas EC',
            debugShowCheckedModeBanner: false,
            initialRoute: "/welcome",
            routes: getRoutes(),
          );
        });
  }
}
