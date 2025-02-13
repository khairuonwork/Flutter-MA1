import 'package:flutter/material.dart';
import './pages/profile.dart';
// import '../component/bottomnavbar.dart';

void main() {
  runApp(const ProjectKamis());
}

class ProjectKamis extends StatelessWidget {
  const ProjectKamis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Profile(),
    );
  }
}
