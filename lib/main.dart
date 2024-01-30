import 'package:flutter/material.dart';
import 'package:hobanovel/common/widgets/bottom_bar.dart';
import 'package:hobanovel/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: BottomBar(),
      // home: ListView(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.blueAccent,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 200,
      //       color: Colors.grey,
      //     ),
      //   ],
      // )
    );
  }
}
