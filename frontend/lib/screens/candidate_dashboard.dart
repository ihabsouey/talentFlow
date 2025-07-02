import 'package:flutter/material.dart';

class CandidateDashboard extends StatelessWidget {
  const CandidateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Candidate Dashboard')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search for jobs'),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('View your applications'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Manage your profile'),
          ),
        ],
      ),
    );
  }
}
