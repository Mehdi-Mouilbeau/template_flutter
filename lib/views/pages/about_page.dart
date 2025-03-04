import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Welcome to the About Page!'),
      ),
    );
  }
}