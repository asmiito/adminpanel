import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: camel_case_types
class calendar extends StatefulWidget {
  const calendar({super.key});

  @override
  State<calendar> createState() => _calendarState();
}

// ignore: camel_case_types
class _calendarState extends State<calendar> {
  DateTime _day = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber[100],
        ),
        child: Column(children: [
          Row(
            children: [
              Text(
                DateFormat("MMM , yyyy").format(_day),
                style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              const SizedBox(
                width: 12,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _day = DateTime(_day.year, _day.month + 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.brown,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _day = DateTime(_day.year, _day.month - 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Colors.brown,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          TableCalendar(
            focusedDay: _day,
            firstDay: DateTime.utc(2004),
            lastDay: DateTime.utc(2024),
            calendarStyle: const CalendarStyle(
                todayDecoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle)),
            headerVisible: false,
            onFormatChanged: (result) {},
          ),
        ]),
      ),
    );
  }
}
