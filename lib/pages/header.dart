import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _headerState();
}

// ignore: camel_case_types
class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            'Dashboard',
            style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.brown),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              headericon(Icons.search),
              const SizedBox(
                width: 12,
              ),
              headericon(Icons.notification_add_outlined),
              const SizedBox(
                width: 12,
              ),
              headericon(Icons.send),
            ],
          )
        ],
      ),
    );
  }

  Widget headericon(icon) {
    return Icon(
      icon,
      color: Colors.brown,
    );
  }
}
