import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/widgets/about_us/about_us.dart';

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
      child: Column(
        children: [
          Text(
            'About Us',
            softWrap: true,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Text(
              aboutUsText,
              style: GoogleFonts.ebGaramond(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(16.0)),
            child: const Center(child: Text('Put image here')),
          ),
        ],
      ),
    );
  }
}
