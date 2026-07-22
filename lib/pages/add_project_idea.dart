import 'package:flutter/material.dart';

class AddProjectIdeaScreen extends StatelessWidget {
  const AddProjectIdeaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Project Idea'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Project title',
                    prefixIcon: Icon(Icons.title),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Project description',
                    prefixIcon: Icon(Icons.description),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Research area',
                    prefixIcon: Icon(Icons.science),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Save project idea selected.'),
                      ),
                    );
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Save Project Idea'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}