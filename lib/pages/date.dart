import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class datedesign extends StatefulWidget {
  const datedesign({super.key});

  @override
  State<datedesign> createState() => _datedesignState();
}

// ignore: camel_case_types
class _datedesignState extends State<datedesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber[100],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Projects progress'.toUpperCase(),
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(219, 132, 18, 1)),
                child: Text(
                  'View All',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5))),
                  children: [
                    headertext('Projuct Name'),
                    headertext('description'),
                    headertext('status'),
                    headertext('-----'),
                  ]),
              TableRow(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ))),
                  children: [
                    headertext('Hr System'),
                    headertext('Employee Manage'),
                    headertext('Done'),
                    headertext('-----'),
                  ]),
              TableRow(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ))),
                  children: [
                    headertext('School System'),
                    headertext('Student Manage'),
                    headertext('Pending'),
                    headertext('-----'),
                  ]),
              TableRow(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ))),
                  children: [
                    headertext('Government Sys'),
                    headertext('Fetch Api'),
                    headertext('Done'),
                    headertext('-----'),
                  ]),
            ],
          )
        ],
      ),
    );
  }

  Widget headertext(text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text.toUpperCase(),
        style: GoogleFonts.aBeeZee(color: Colors.brown),
      ),
    );
  }
}
