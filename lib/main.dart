import 'package:flutter/material.dart';

void main() {
  runApp(const SupervisorApp());
}

class SupervisorApp extends StatelessWidget {
  const SupervisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supervisor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}