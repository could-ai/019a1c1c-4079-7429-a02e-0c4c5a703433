import 'package:flutter/material.dart';

class ApplicantDashboard extends StatelessWidget {
  const ApplicantDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applicant Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome to Mutare Polytechnic Admission System',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.assignment),
                      title: const Text('Apply for Courses'),
                      subtitle: const Text('Browse and apply for available courses'),
                      onTap: () {
                        // TODO: Navigate to course application
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.upload_file),
                      title: const Text('Upload Documents'),
                      subtitle: const Text('Upload required certificates and documents'),
                      onTap: () {
                        // TODO: Navigate to document upload
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.schedule),
                      title: const Text('View Application Status'),
                      subtitle: const Text('Check the status of your applications'),
                      onTap: () {
                        // TODO: Navigate to application status
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.video_call),
                      title: const Text('Interview Schedule'),
                      subtitle: const Text('View scheduled interviews'),
                      onTap: () {
                        // TODO: Navigate to interview schedule
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
