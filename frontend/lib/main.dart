import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(const TalentFlowApp());
}

class TalentFlowApp extends StatelessWidget {
  const TalentFlowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TalentFlow',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
