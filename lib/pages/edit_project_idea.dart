import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/project_idea.dart';

class EditProjectIdeaScreen extends StatefulWidget {
  final ProjectIdea projectIdea;

  const EditProjectIdeaScreen({
    super.key,
    required this.projectIdea,
  });

  @override
  State<EditProjectIdeaScreen> createState() =>
      _EditProjectIdeaScreenState();
}

class _EditProjectIdeaScreenState extends State<EditProjectIdeaScreen> {
  String title = '';
  String description = '';
  String researchArea = '';

  @override
  void initState() {
    super.initState();

    title = widget.projectIdea.title;
    description = widget.projectIdea.description;
    researchArea = widget.projectIdea.researchArea;
  }

  void saveChanges() {
    if (title.isEmpty ||
        description.isEmpty ||
        researchArea.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please complete all project idea fields.'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Project idea updated successfully.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Project Idea'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                TextFormField(
                  initialValue: widget.projectIdea.title,
                  decoration: const InputDecoration(
                    labelText: 'Project title',
                    prefixIcon: Icon(Icons.title),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {
                    title = value.trim();
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  initialValue: widget.projectIdea.description,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'Project description',
                    prefixIcon: Icon(Icons.description),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {
                    description = value.trim();
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  initialValue: widget.projectIdea.researchArea,
                  decoration: const InputDecoration(
                    labelText: 'Research area',
                    prefixIcon: Icon(Icons.science),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {
                    researchArea = value.trim();
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: saveChanges,
                  icon: const Icon(Icons.save),
                  label: const Text('Save Changes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}