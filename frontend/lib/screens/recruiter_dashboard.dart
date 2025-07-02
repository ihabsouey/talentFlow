import 'package:flutter/material.dart';

class RecruiterDashboard extends StatelessWidget {
  const RecruiterDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recruiter Dashboard')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Post a new job'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Manage job postings'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Review applicants'),
          ),
        ],
      ),
    );
  }
}
