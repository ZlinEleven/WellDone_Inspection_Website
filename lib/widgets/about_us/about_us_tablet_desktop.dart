import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/widgets/about_us/about_us.dart';

class AboutUsTabletDesktop extends StatelessWidget {
  const AboutUsTabletDesktop({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth < 1255 ? screenWidth - 380 : 875,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'About Us',
                      softWrap: true,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Expanded(
                      child: Divider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                          height: 5,
                          color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth < 1255 ? screenWidth - 420 : 800,
                  child: Text(
                    aboutUsText,
                    style: GoogleFonts.ebGaramond(
                      fontSize: 20,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 10,
                        thickness: 1,
                        height: 5,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            height: 250,
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
