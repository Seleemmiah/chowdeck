import 'package:flutter/material.dart';

class SendPackageScreen2 extends StatelessWidget {
  const SendPackageScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final packageTypes = [
      "Food", "Clothes", "Books", "Medicine", "Phone",
      "Documents", "Other", "Prefer not to say"
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Send a package")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Receiver Information", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const TextField(decoration: InputDecoration(labelText: "Name *")),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.flag),
                      hintText: "+234",
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Phone number *",
                      hintText: "08012345678",
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            const TextField(decoration: InputDecoration(labelText: "Email")),

            const SizedBox(height: 20),
            const Text("What's in the package?", style: TextStyle(fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text("Note: The package size limits and weight must not exceed 65x55x40cm and 20kg respectively.",
                  style: TextStyle(color: Colors.redAccent)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: packageTypes
                  .map((type) => ChoiceChip(label: Text(type), selected: false))
                  .toList(),
            ),

            const SizedBox(height: 20),
            const Text("Package Protection", style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              value: false,
              onChanged: (_) {},
              title: const Text("Apply package protection"),
              subtitle: const Text("Use our insurance to safeguard your packages against any incidents. We've got you covered!"),
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Confirm & Send"))
          ],
        ),
      ),
    );
  }
}
