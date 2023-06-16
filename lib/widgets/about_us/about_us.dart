import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/widgets/about_us/about_us_mobile.dart';
import 'package:website/widgets/about_us/about_us_tablet_desktop.dart';

const aboutUsText =
    'WellDone Inspection Inc. is a full service quality control company and registered with DOB Class Two, providing comprehensive special inspections. Our engineers and inspectors are experienced in the field and are certified by ACI, ICC and AWS. We are comitted to provide effective Civil, Structural and Mechanical Inspections that are in compliance with codes and standard thereby maintaining public safety and client satisfaction. We provide comprehensive reports in a timely fashion that itemize issues and assign responsibility.';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return screenWidth > 800
        ? const AboutUsTabletDesktop()
        : const AboutUsMobile();
  }
}
