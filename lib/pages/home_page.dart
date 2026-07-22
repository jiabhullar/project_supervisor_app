import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Supervisor Hub'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.school,
                size: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Find Your Project Supervisor',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              const Text(
                'Browse academic staff, research areas and '
                'final-year project ideas.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  print('Browse Project Ideas button pressed');
                },
                child: const Text('Browse Project Ideas'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  print('Browse Staff Profiles button pressed');
                },
                child: const Text('Browse Staff Profiles'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  print('Staff Login button pressed');
                },
                child: const Text('Staff Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

