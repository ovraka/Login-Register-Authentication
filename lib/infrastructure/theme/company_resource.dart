import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CompanyTagLine extends StatelessWidget {
  const CompanyTagLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Discover upcoming events near you',
      maxLines: 2,
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: tagline)),
    );
  }
}

class CompanyTitle extends StatelessWidget {
  const CompanyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'EVON',
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: evonTitle)),
    );
  }
}

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        Container(
          width: 90.0,
          height: 90.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [seaBlue, skyBlue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            shape: BoxShape.circle,
          ),
        ),
        const Positioned(
            top: 22,
            left: 7,
            child: Icon(
              Icons.location_pin,
              color: Colors.white,
              size: 50,
            )),
        const Positioned(
            top: 22,
            left: 33,
            child: Icon(
              Icons.location_pin,
              color: Colors.white,
              size: 50,
            )),
      ]),
    );
  }
}
