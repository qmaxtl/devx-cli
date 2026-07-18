import 'package:flutter/material.dart';

class {{ScreenName}}Screen extends StatelessWidget {
  const {{ScreenName}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{ScreenName}}'),
      ),
      body: const Center(
        child: Text('{{ScreenName}} Screen'),
      ),
    );
  }
}