import 'package:flutter/material.dart';

class StaffDashboardScreen extends StatelessWidget {
  const StaffDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Dashboard'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.dashboard,
                  size: 70,
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome to the Staff Dashboard',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Manage your profile and final-year project ideas.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Manage project ideas pressed');
                    },
                    child: const Text('Manage Project Ideas'),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Edit staff profile pressed');
                    },
                    child: const Text('Edit Profile'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}