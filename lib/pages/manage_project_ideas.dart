import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';
import 'package:project_supervisor_app/pages/add_project_idea.dart';
import 'package:project_supervisor_app/pages/edit_project_idea.dart';

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const AddProjectIdeaScreen();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Project Idea'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              itemCount: projectIdeas.length,
              itemBuilder: (BuildContext context, int index) {
                final ProjectIdea projectIdea = projectIdeas[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
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
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return EditProjectIdeaScreen(
                                      projectIdea: projectIdea,
                                    );
                                  },
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text('Edit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}