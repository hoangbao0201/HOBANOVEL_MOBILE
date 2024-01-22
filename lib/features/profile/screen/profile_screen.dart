import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/home';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Page Profile"),
    );
  }
}