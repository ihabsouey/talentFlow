import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:talentflow_app/screens/signup.dart';

void main() {
  testWidgets('SignupScreen shows placeholder', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignupScreen()));

    expect(find.text('Signup Form Placeholder'), findsOneWidget);
  });
}
