import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

// ignore: camel_case_types
class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
          color: Colors.brown,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Flutter Website',
                  style: GoogleFonts.abel(
                      fontSize: 30,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                ),
              ),
              listtiledesign(
                  title: 'Dashboard',
                  icon: 'assets/menu_home.png',
                  press: () {}),
              listtiledesign(
                  title: 'Projects',
                  icon: 'assets/menu_onboarding.png',
                  press: () {}),
              listtiledesign(
                  title: 'Report',
                  icon: 'assets/menu_report.png',
                  press: () {}),
              listtiledesign(
                  title: 'Calendar',
                  icon: 'assets/menu_calendar.png',
                  press: () {}),
              listtiledesign(
                  title: 'Setting',
                  icon: 'assets/menu_settings.png',
                  press: () {}),
              listtiledesign(
                  title: 'Profile',
                  icon: 'assets/menu_recruitment.png',
                  press: () {}),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(left: 70, top: 210),
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const Spacer(),
            ],
          )),
    );
  }
}

// ignore: camel_case_types
class listtiledesign extends StatelessWidget {
  final String title, icon;
  final Function press;
  const listtiledesign(
      {super.key,
      required this.title,
      required this.icon,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press(),
      horizontalTitleGap: 2.0,
      leading: Image.asset(
        icon,
        color: Colors.white,
        height: 20,
      ),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
