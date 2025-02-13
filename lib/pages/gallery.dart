import 'package:flutter/material.dart';
import 'package:kamis_praktikum/component/sidedrawer.dart';
import '../component/navbar.dart';
import '../component/bottomnavbar.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(), // Custom Navbar
      body: const GalleryContent(), // GalleryContent manages the images
      drawer: SideDrawer(),
      bottomNavigationBar:
          const BottomNavbar(currentIndex: 1), // Index for Gallery
    );
  }
}

class GalleryContent extends StatelessWidget {
  const GalleryContent({super.key});

  final List<String> _images = const [
    'assets/images/git.png',
    'assets/images/git.png',
    'assets/images/git.png',
    'assets/images/git.png',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0), // Add padding to the grid
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust number of columns
        crossAxisSpacing: 4.0, // Spacing between items in the grid
        mainAxisSpacing: 4.0, // Spacing along the main axis
      ),
      itemCount: _images.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => _openImageFullScreen(context, _images[index]),
          child: Image.asset(
            _images[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  void _openImageFullScreen(BuildContext context, String imageUrl) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('View Image'),
          ),
          body: Center(
            child: Image.asset(imageUrl),
          ),
        ),
      ),
    );
  }
}
