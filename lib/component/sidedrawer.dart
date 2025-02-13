import 'package:flutter/material.dart';
import '../pages/profile.dart';
import '../pages/gallery.dart';
import '../pages/contact.dart';
import '../pages/social.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  void _onItemTapped(BuildContext context, int index) {
    // Close the drawer before navigating
    Navigator.pop(context);

    // Navigate to the corresponding page
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Gallery()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Contact()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Social()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            child: const Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),

          // Profile Menu Item
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => _onItemTapped(context, 0),
          ),

          // Gallery Menu Item
          ListTile(
            leading: const Icon(Icons.photo_album),
            title: const Text('Gallery'),
            onTap: () => _onItemTapped(context, 1),
          ),

          // Contact Menu Item
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Contact'),
            onTap: () => _onItemTapped(context, 2),
          ),

          // Social Menu Item
          ListTile(
            leading: const Icon(Icons.connect_without_contact),
            title: const Text('Social'),
            onTap: () => _onItemTapped(context, 3),
          ),
        ],
      ),
    );
  }
}
