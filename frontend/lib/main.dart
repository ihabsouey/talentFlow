import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthProvider(),
      child: const TalentFlowApp(),
    ),
  );
}

class TalentFlowApp extends StatelessWidget {
  const TalentFlowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, auth, _) {
        return MaterialApp(
          title: 'TalentFlow',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: auth.isLoggedIn ? const HomeScreen() : const LoginScreen(),
        );
      },
    );
  }
}
