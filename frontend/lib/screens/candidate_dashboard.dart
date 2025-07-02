import 'package:flutter/material.dart';

class CandidateDashboard extends StatelessWidget {
  const CandidateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Candidate Dashboard')),
      body: const Center(child: Text('Candidate features here')), 
    );
  }
}
