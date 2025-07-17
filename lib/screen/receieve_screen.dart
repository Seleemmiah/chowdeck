import 'package:chowdeck/components/my_button.dart';
import 'package:flutter/material.dart';

class ReceieveScreen extends StatefulWidget {
  const ReceieveScreen({super.key});

  @override
  State<ReceieveScreen> createState() => _ReceieveScreenState();
}

class _ReceieveScreenState extends State<ReceieveScreen> {
  final List<String> packageTypes = [
    "Food",
    "Clothes",
    "Books",
    "Medicine",
    "Phone",
    "Documents",
    "Other",
    "Prefer not to say",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Receive a Package",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Pickup Section ---
            const Text(
              "Delivery Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            const Text("Pickup", style: TextStyle()),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Pickup Location *",
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // --- Dropoff Section ---
            const Text("Dropoff", style: TextStyle()),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Dropoff Location *",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // --- Sender Info ---
            const Text(
              "Sender Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text("Name *"),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text("Phone Number *"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.flag),
                      hintText: "+234",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Phone number",
                      hintText: "08012345678",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text("Email"),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // --- Receiver Info ---
            const Text(
              "Receiver Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text("Name *"),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text("Phone Number *"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.flag),
                      hintText: "+234",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Phone number",
                      hintText: "08012345678",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text("Email"),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // --- What's in the package? ---
            const Text(
              "What's in the package?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Note: The package size limits and weight must not exceed 65x55x40cm and 20kg respectively.",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children:
                  packageTypes
                      .map(
                        (type) =>
                            ChoiceChip(label: Text(type), selected: false),
                      )
                      .toList(),
            ),

            const Divider(height: 32),

            // --- Package Protection ---
            const Text(
              "Package Protection",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (_) {},
              title: const Text("Apply package protection"),
              subtitle: const Text(
                "Use our insurance to safeguard your packages against any incidents. We've got you covered!",
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            const SizedBox(height: 20),

            // --- Custom Button ---
            MyButton(
              text: "Go to Payment",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please review your details!")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
