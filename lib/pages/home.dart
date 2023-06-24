import 'package:adminpanel2/pages/dashboard.dart';
import 'package:adminpanel2/pages/sidebar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //side bar
          Expanded(child: sidebar()),
          Expanded(flex: 4, child: dashboard())
        ],
      )),
    );
  }
}
