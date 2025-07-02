import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            ElevatedButton(
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).logout();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
