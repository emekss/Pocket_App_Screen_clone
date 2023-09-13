import 'package:flutter/material.dart';
import 'package:flutter_application_1/savings_page.dart';

void main() {
  runApp(const PocketApp());
}

class PocketApp extends StatelessWidget {
  const PocketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SavingsPage(),
    );
  }
}
