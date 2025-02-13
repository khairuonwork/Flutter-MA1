import 'package:flutter/material.dart';
import '../component/navbar.dart';
import '../component/bottomnavbar.dart';
import '../component/sidedrawer.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: const ContactContent(),
      drawer: SideDrawer(),
      bottomNavigationBar: const BottomNavbar(currentIndex: 2),
    );
  }
}

class ContactContent extends StatelessWidget {
  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('khairuonwork@gmail.com', style: TextStyle(fontSize: 18)),
          Text('Daffa Khairul Ammar', style: TextStyle(fontSize: 18)),
          Text('2AEC - 1', style: TextStyle(fontSize: 18)),
          Text('+62-81290209247', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
