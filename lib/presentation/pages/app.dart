import 'package:flutter/material.dart';
import 'package:test_solid_app/presentation/pages/home_page/home_page.dart';

/// Initial widget
class App extends StatelessWidget {
  /// Initial widget constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
