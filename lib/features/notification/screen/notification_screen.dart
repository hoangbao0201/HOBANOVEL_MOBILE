import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = '/home';
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Page Notification"),
    );
  }
}