import 'package:chowdeck/components/build_card.dart';
import 'package:chowdeck/screen/receieve_screen.dart';
import 'package:chowdeck/screen/send_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.pop(context); // You can customize this
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              child: const Text(
                "Order History",
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () {
                // Handle order history tap
              },
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 20),
          const Text(
            'Easy package delivery with Relay',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Send packages to friends, businesses or loved ones',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 10),

          // Reusable Package Cards
          PackageCard(
            title: 'Send a package',

            onTap: () {
              // Navigate or perform action
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendScreen()),
              );
            },
            imagePath: 'assets/image/sendpackage.png',
          ),

          const SizedBox(height: 10),

          PackageCard(
            title: 'Request a pickup',
            onTap: () {
              // Navigate or perform action
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceieveScreen()),
              );
            },
            imagePath: 'assets/image/send.png',
          ),
        ],
      ),
    );
  }
}
