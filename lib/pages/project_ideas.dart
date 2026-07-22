import 'package:flutter/material.dart';

class ProjectIdeasScreen extends StatelessWidget {
  const ProjectIdeasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Ideas'),
      ),
      body: const Center(
        child: Text('Project ideas will be displayed here.'),
      ),
    );
  }
}