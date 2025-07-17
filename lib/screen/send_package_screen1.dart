import 'package:flutter/material.dart';
import 'send_package_screen2.dart';

class SendPackageScreen1 extends StatefulWidget {
  const SendPackageScreen1({super.key});

  @override
  State<SendPackageScreen1> createState() => _SendPackageScreen1State();
}

class _SendPackageScreen1State extends State<SendPackageScreen1> {
  final _formKey = GlobalKey<FormState>();
  bool useAccountInfo = false;

  final pickupController = TextEditingController(text: "21 Ike Oluwa St, Abule Egba 102213, Lagos, Nigeria");
  final dropoffController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send a package")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Delivery Details", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              TextFormField(
                controller: pickupController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: "Pickup",
                  prefixIcon: Icon(Icons.location_on),
                  filled: true,
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: dropoffController,
                decoration: const InputDecoration(
                  labelText: "Drop off Address",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                ),
              ),
              const SizedBox(height: 12),
              const Text("Delivery fee: 0", style: TextStyle(color: Colors.redAccent)),

              const SizedBox(height: 20),
              const Text("Sender Information", style: TextStyle(fontWeight: FontWeight.bold)),
              CheckboxListTile(
                value: useAccountInfo,
                onChanged: (val) => setState(() => useAccountInfo = val!),
                title: const Text("Use my account information"),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Name *"),
              ),
              const SizedBox(height: 8),
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
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: "Phone number *",
                        hintText: "08012345678",
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SendPackageScreen2()),
                  );
                },
                child: const Text("Continue"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
