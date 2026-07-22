import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/staff_member.dart';

class StaffProfilesScreen extends StatelessWidget {
  const StaffProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
     const List<StaffMember> staffMembers = [
      StaffMember(
      id: 'staff1',
      name: 'Dr Sarah Ahmed',
      email: 'sarah.ahmed@port.ac.uk',
      biography:
          'Dr Sarah Ahmed teaches software development and supervises '
          'final-year computing projects.',
      researchAreas: [
        'Mobile Application Development',
        'Software Engineering',
      ],
    ),
    StaffMember(
      id: 'staff2',
      name: 'Dr John Smith',
      email: 'john.smith@port.ac.uk',
      biography:
          'Dr John Smith is an expert in data science and machine learning, '
          'and supervises projects in these areas.',
      researchAreas: [
        'Artificial Intelligence',
        'Machine Learning',
      ],
    ),
    StaffMember(
      id: 'staff3',
      name: 'Dr Emily Johnson',
      email: 'emily.johnson@port.ac.uk',
      biography:
          'Dr Emily Johnson specialises in protecting computer systems'
          'and identifying online security threats.',
      researchAreas: [
        'Cybersecurity',
        'Network Security',
      ],
    ),
  ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Profiles'),
      ),
      body: ListView.builder(
        itemCount: staffMembers.length,
        itemBuilder: (context, index) {
          final staffMember = staffMembers[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  staffMember.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(staffMember.email),
                const SizedBox(height: 10),
                Text(staffMember.biography),
                const SizedBox(height: 10),
                Text(
                  'Research areas: '
                  '${staffMember.researchAreas.join(', ')}',
                  style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
