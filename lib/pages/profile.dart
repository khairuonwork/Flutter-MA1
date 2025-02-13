import 'package:flutter/material.dart';
import '../component/sidedrawer.dart';
import '../component/navbar.dart';
import '../component/bottomnavbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(), // Custom Navbar
      body: const ProfileContent(), // Content khusus halaman Profile
      drawer: SideDrawer(),
      bottomNavigationBar: const BottomNavbar(
        currentIndex: 0, // Index halaman Profile
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Avatar / Profile Picture
          Container(
            width: 275,
            height: 275,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.png', // Gambar profil
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Social Media Links Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _showAlertDialog(
                    context, "GitHub", "github.com/khairuonwork"),
                icon: Image.asset(
                  'assets/images/git.png',
                  width: 40,
                  height: 40,
                ),
              ),
              IconButton(
                onPressed: () => _showAlertDialog(
                    context, "Instagram", "instagram.com/mrkhairu"),
                icon: Image.asset(
                  'assets/images/instagram.png',
                  width: 40,
                  height: 40,
                ),
              ),
              IconButton(
                onPressed: () => _showAlertDialog(
                    context, "LinkedIn", "linkedin.com/in/daffa-khairul-ammar"),
                icon: Image.asset(
                  'assets/images/linkedin.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Function to show alert dialog for social media links
  void _showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
