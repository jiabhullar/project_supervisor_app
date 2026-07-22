import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/staff_member.dart';

class StaffProfilesScreen extends StatelessWidget {
  const StaffProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const StaffMember staffMember = StaffMember(
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
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Profiles'),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}