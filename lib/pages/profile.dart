import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber[100],
        ),
        child: Column(children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  'assets/user1.jpg',
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Asiito Mohamed',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  Text(
                    'Hr Manager',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, color: Colors.brown[300]),
                  ),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Joined Date'),
                  Text(
                    '2/24/2023',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
