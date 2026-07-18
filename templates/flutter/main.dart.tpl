import 'package:flutter/material.dart';

void main() {
  runApp(const DevXApp());
}

class DevXApp extends StatelessWidget {
  const DevXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '{{project_name}}',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('DevX Project Ready 🚀'),
        ),
      ),
    );
  }
}
