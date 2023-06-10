import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const aboutUsText =
    'WellDone Inspection Inc. is a full service quality control company and registered with DOB Class Two, providing comprehensive special inspections. Our engineers and inspectors are experienced in the field and are certified by ACI, ICC and AWS. We are comitted to provide effective Civil, Structural and Mechanical Inspections that are in compliance with codes and standard thereby maintaining public safety and client satisfaction. We provide comprehensive reports in a timely fashion that itemize issues and assign responsibility.';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About Us',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 200,
          width: 800,
          child: Text(
            aboutUsText,
            style: GoogleFonts.ebGaramond(
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
