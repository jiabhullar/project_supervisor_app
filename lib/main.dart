import 'package:flutter/material.dart';
import 'package:project_supervisor_app/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Supervisor Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 0, 200)),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 249, 248, 249),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
