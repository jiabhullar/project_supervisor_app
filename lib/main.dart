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
          seedColor: const Color.fromARGB(255, 255, 139, 230)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 218, 139, 255),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
