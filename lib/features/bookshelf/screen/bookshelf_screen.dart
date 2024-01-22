
import 'package:flutter/material.dart';

class BookshelfScreen extends StatefulWidget {
  static const String routeName = '/bookshelf';
  const BookshelfScreen({super.key});

  @override
  State<BookshelfScreen> createState() => _BookshelfScreenState();
}

class _BookshelfScreenState extends State<BookshelfScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Page Bookshelf"),
    );
  }
}