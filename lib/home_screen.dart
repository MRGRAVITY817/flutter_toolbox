import 'package:flutter/material.dart';
import 'package:flutter_toolbox/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => const HeadspaceWelcomeRoute().go(context),
          child: const Text('HeadSpace Welcome Screen'),
        ),
      ),
    );
  }
}
