import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Daffa Khairul Ammar",
        style: TextStyle(color: Colors.redAccent, fontSize: 20),
      ),
      centerTitle: true,
      backgroundColor: Colors.grey.shade100,
      leading: Container(
        padding: const EdgeInsets.only(left: 20),
        width: 20,
        height: 20,
        child: Image.asset(
          'assets/images/rubik.png',
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        // Menu Icon Button to open the drawer
        Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Menu Icon
              color: Colors.redAccent,
              onPressed: () {
                // Open the drawer
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
