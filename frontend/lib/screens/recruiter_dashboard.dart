import 'package:flutter/material.dart';

class RecruiterDashboard extends StatelessWidget {
  const RecruiterDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recruiter Dashboard')),
      body: const Center(child: Text('Recruiter features here')),
    );
  }
}
