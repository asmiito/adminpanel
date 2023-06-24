import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Container(
        width: 450,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(237, 121, 81, 101)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Type Here To Search',
                hintStyle:
                    GoogleFonts.aBeeZee(fontSize: 15, color: Colors.white),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
