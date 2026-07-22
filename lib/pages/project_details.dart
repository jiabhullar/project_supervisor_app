import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final ProjectIdea projectIdea;

  const ProjectDetailsScreen({
    super.key,
    required this.projectIdea,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectIdea.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'Research area',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(projectIdea.researchArea),
            const SizedBox(height: 20),
            Text(
              'Project description',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(projectIdea.description),
          ],
        ),
      ),
    );
  }
}