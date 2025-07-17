import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const PackageCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      color: Colors.pink[900],
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          height: 300,
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                // color: Colors.pink.withOpacity(0.09),
              ),

              // Title
              const Positioned(
                top: 20,
                left: 20,
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    // shadows: [Shadow(blurRadius: 10.0, color: Colors.white)],
                  ),
                ),
              ),

              // Title over image
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    // shadows: [Shadow(blurRadius: 10.0, color: Colors.white)],
                  ),
                ),
              ),

              // Arrow icon at bottom-left
              const Positioned(
                bottom: 20,
                left: 20,
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
