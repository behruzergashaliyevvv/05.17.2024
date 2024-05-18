import 'package:flutter/material.dart';
import 'package:uyishi/pages/ongboarding_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text(
      //   //   "Welcome back",
      //   //   style: TextStyle(color: Colors.black, fontSize: 25),
      //   // ),
      // ),
      body: Center(
        child: OnBoardingPage(),
      ),
    );
  }
}
