import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';

class ProjectIdeasScreen extends StatelessWidget {
  const ProjectIdeasScreen({super.key});

  @override
  Widget build(BuildContext context) {
     const List<ProjectIdea> projectIdeas = [ ProjectIdea(
        id: '1',
        staffId: 'staff1',
        title: 'Student Wellbeing Mobile App',
        description: 'Develop a mobile application that provides wellbeing resources'
            'and allows students to record their mood.',
      researchArea: 'Mobile Application Development',
      ),
      ProjectIdea(
        id: '2',
        staffId: 'staff2',
        title: 'AI-Powered Tutoring System',
        description: 'Create an AI-powered tutoring system that can provide personalized'
            'learning experiences for students.',
        researchArea: 'Artificial Intelligence',
      ),
      ProjectIdea(
        id: '3',
        staffId: 'staff3',
        title: 'Phishing Email Detection',
        description: 'Create a system to detect and prevent phishing emails from reaching users.',
        researchArea: 'Cybersecurity',
      ),
     ];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Ideas'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: projectIdeas.length,
        itemBuilder: (context, index) {
          final projectIdea = projectIdeas[index];
          return Card(
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
          );
        },
      ),
    );
  }
}