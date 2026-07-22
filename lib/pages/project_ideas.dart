import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';

class ProjectIdeasScreen extends StatefulWidget {
  const ProjectIdeasScreen({super.key});

  @override
  State<ProjectIdeasScreen> createState() => _ProjectIdeasScreenState();
}

class _ProjectIdeasScreenState extends State<ProjectIdeasScreen> {
  String searchText = '';
  String selectedResearchArea = 'All';

     final List<ProjectIdea> projectIdeas = const [
      ProjectIdea(
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

  @override
  Widget build(BuildContext context) {
    final List<ProjectIdea> filteredProjectIdeas =
        projectIdeas.where((ProjectIdea projectIdea) {
      final bool matchesSearchText = projectIdea.title
              .toLowerCase()
              .contains(searchText.toLowerCase()) ||
          projectIdea.researchArea
              .toLowerCase()
              .contains(searchText.toLowerCase());
      
      final bool matchesResearchArea = selectedResearchArea == 'All' ||
          projectIdea.researchArea == selectedResearchArea;
      
      return matchesSearchText && matchesResearchArea;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Ideas'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search project ideas',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (String searchText) {
                setState(() {
                  this.searchText = searchText;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: DropdownButtonFormField<String>(
              initialValue: selectedResearchArea,
              decoration: const InputDecoration(
                labelText: 'Filter by research area',
                prefixIcon: Icon(Icons.filter_list),
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All research areas'),
                ),
                DropdownMenuItem(
                  value: 'Mobile Application Development',
                  child: Text('Mobile Application Development'),
                ),
                DropdownMenuItem(
                  value: 'Artificial Intelligence',
                  child: Text('Artificial Intelligence'),
                ),
                DropdownMenuItem(
                  value: 'Cybersecurity',
                  child: Text('Cybersecurity'),
                ),
              ],
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    selectedResearchArea = value;
                  });
                }
              },
            ),
          ),
          Expanded(
            child: filteredProjectIdeas.isEmpty
                ? const Center(
                    child: Text(
                      'No project ideas found.',
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    itemCount: filteredProjectIdeas.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ProjectIdea projectIdea =
                          filteredProjectIdeas[index];

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