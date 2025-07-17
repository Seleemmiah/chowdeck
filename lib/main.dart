import 'package:chowdeck/screen/home_screen.dart';
import 'package:chowdeck/screen/receieve_screen.dart';
import 'package:chowdeck/screen/send_screen.dart' as send;
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relay Delivery App',
      theme: ThemeData.light(useMaterial3: true),
      home:  HomeScreen(),
      routes:  {
        '/send': (context) => send.SendScreen(),
        '/receive': (context) => ReceieveScreen(),
      },
    );
  }
}
