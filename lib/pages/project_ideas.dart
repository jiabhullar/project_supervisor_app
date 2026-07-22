import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';

class ProjectIdeasScreen extends StatelessWidget {
  const ProjectIdeasScreen({super.key});

  @override
  Widget build(BuildContext context) {
     const ProjectIdea projectIdea = ProjectIdea(
      id: '1',
      staffId: 'staff1',
      title: 'Student Wellbeing Mobile App',
      description: 'Develop a mobile application that provides wellbeing resources'
          'and allows students to record their mood.',
      researchArea: 'Mobile Application Development',
    ),
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Ideas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectIdea.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(projectIdea.description),
                const SizedBox(height: 10),
                Text(
                  'Research area: ${projectIdea.researchArea}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}