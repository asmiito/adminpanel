import 'package:adminpanel2/pages/box.dart';
import 'package:adminpanel2/pages/calendar.dart';
import 'package:adminpanel2/pages/date.dart';
import 'package:adminpanel2/pages/header.dart';
import 'package:adminpanel2/pages/profile.dart';
import 'package:adminpanel2/pages/projects.dart';
import 'package:adminpanel2/pages/search.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

// ignore: camel_case_types
class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: const Column(children: [
        header(),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Column(children: [
                  box(),
                  SizedBox(
                    height: 5,
                  ),
                  projects(),
                  SizedBox(
                    height: 5,
                  ),
                  datedesign(),
                ])),
            Expanded(
                flex: 1,
                child: Column(children: [
                  profile(),
                  SizedBox(
                    height: 12,
                  ),
                  calendar(),
                  SizedBox(
                    height: 12,
                  ),
                  search()
                ])),
          ],
        )),
        Text(
          'CopyRight 2023',
          style: TextStyle(fontSize: 10, color: Colors.brown),
        ),
      ]),
    );
  }
}
