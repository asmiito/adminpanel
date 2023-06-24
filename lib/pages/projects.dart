import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class projects extends StatefulWidget {
  const projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.flutter_dash,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    ' Flutter Projects',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 20, color: Colors.brown),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '9 Projects',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              )
            ]),
          ),
        )),
        Flexible(
            child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.javascript,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Javascript',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 20, color: Colors.brown),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '89 Projects',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              )
            ]),
          ),
        )),
        Flexible(
            child: Card(
          shadowColor: Colors.brown[900],
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.design_services,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Designs',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 20, color: Colors.brown),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' 32 UI Design',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              )
            ]),
          ),
        )),
      ],
    );
  }
}
