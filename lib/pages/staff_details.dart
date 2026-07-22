import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/staff_member.dart';

class StaffDetailsScreen extends StatelessWidget {
  final StaffMember staffMember;

  const StaffDetailsScreen({
    super.key,
    required this.staffMember,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              staffMember.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'Email',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(staffMember.email),
            const SizedBox(height: 20),
            Text(
              'Biography',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(staffMember.biography),
            const SizedBox(height: 20),
            Text(
              'Research areas',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(staffMember.researchAreas.join(', ')),
          ],
        ),
      ),
    );
  }
}