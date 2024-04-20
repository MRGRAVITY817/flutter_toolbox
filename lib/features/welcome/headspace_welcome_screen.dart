import 'package:flutter/material.dart';
import 'package:flutter_toolbox/router.dart';

class HeadspaceWelcomeScreen extends StatelessWidget {
  const HeadspaceWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Headspace Welcome Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => const HomeRoute().go(context),
          child: const Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
