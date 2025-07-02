import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:talentflow_app/screens/login.dart';
import 'package:talentflow_app/screens/signup.dart';

void main() {
  testWidgets('LoginScreen has signup button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    expect(find.text('Signup'), findsOneWidget);
    await tester.tap(find.text('Signup'));
    await tester.pumpAndSettle();

    expect(find.byType(SignupScreen), findsOneWidget);
  });
}
