import 'package:flutter/material.dart';
import 'package:project_supervisor_app/models/staff_member.dart';

class StaffProfilesScreen extends StatefulWidget {
  const StaffProfilesScreen({super.key});

  @override
  State<StaffProfilesScreen> createState() =>
      _StaffProfilesScreenState();
}

class _StaffProfilesScreenState extends State<StaffProfilesScreen> {
  String searchText = '';

  final List<StaffMember> staffMembers = const [
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
          'Dr Emily Johnson specialises in protecting computer systems '
          'and identifying online security threats.',
      researchAreas: [
        'Cybersecurity',
        'Network Security',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<StaffMember> filteredStaffMembers =
        staffMembers.where((StaffMember staffMember) {
      final String researchAreas =
          staffMember.researchAreas.join(' ').toLowerCase();

      return staffMember.name
              .toLowerCase()
              .contains(searchText.toLowerCase()) ||
          researchAreas.contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Profiles'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search staff profiles',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {
                setState(() {
                  searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: filteredStaffMembers.isEmpty
                ? const Center(
                    child: Text('No staff profiles found.'),
                  )
                : ListView.builder(
                    padding:
                        const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    itemCount: filteredStaffMembers.length,
                    itemBuilder:
                        (BuildContext context, int index) {
                      final StaffMember staffMember =
                          filteredStaffMembers[index];

                      return Card(
                        margin:
                            const EdgeInsets.only(bottom: 12),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                staffMember.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge,
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
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}