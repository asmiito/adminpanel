import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class box extends StatefulWidget {
  const box({super.key});

  @override
  State<box> createState() => _boxState();
}

// ignore: camel_case_types
class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/3.png'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
        color: Colors.brown,
      ),
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(TextSpan(
                style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.white),
                children: [
                  const TextSpan(text: 'Good Morning ! '),
                  TextSpan(
                      text: 'Asma Mohamed',
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                ])),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Today You have 5 Application \n to test and 6 website to building \n also you need to hire 2 UI Designers',
                style: GoogleFonts.aBeeZee(
                    fontSize: 14,
                    color: const Color.fromARGB(211, 232, 233, 229)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                'See More',
                style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        const Spacer(),
        // Image.asset(
        // 'assets/notification_image.png',
        //height: 160,
        //)
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            "HR Manager",
            style: GoogleFonts.aBeeZee(
              fontSize: 45,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
