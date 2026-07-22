import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';
import 'package:project_supervisor_app/pages/add_project_idea.dart';

class ManageProjectIdeasScreen extends StatelessWidget {
  const ManageProjectIdeasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<ProjectIdea> projectIdeas = [
      ProjectIdea(
        id: '1',
        staffId: 'staff1',
        title: 'Student Wellbeing Mobile App',
        description:
            'Develop a mobile application that provides wellbeing resources '
            'and allows students to record their mood.',
        researchArea: 'Mobile Application Development',
      ),
      ProjectIdea(
        id: '2',
        staffId: 'staff1',
        title: 'Software Testing Support Tool',
        description:
            'Create a tool that helps students organise and record software '
            'test cases and results.',
        researchArea: 'Software Engineering',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Project Ideas'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lightbulb_outline,
                size: 70,
              ),
              const SizedBox(height: 20),
              Text(
                'Your Project Ideas',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              const Text(
                'Your project ideas will be displayed here.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const AddProjectIdeaScreen();
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Add project idea selected.'),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Project Idea'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}