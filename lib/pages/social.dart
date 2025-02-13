import 'package:flutter/material.dart';
import '../component/navbar.dart';
import '../component/bottomnavbar.dart';
import '../component/sidedrawer.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: SocialContent(),
      drawer: const SideDrawer(),
      bottomNavigationBar: const BottomNavbar(currentIndex: 3),
    );
  }
}

class SocialContent extends StatelessWidget {
  const SocialContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/git.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'github.com/khairuonwork',
              style: TextStyle(fontSize: 23),
            )
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/instagram.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              '@mkhairu on Instagram',
              style: TextStyle(fontSize: 23),
            )
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/linkedin.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'linkedin/daffa-khairul-ammar',
              style: TextStyle(fontSize: 23),
            )
          ],
        ),
        const SizedBox(width: 20)
      ],
    ));
  }
}
