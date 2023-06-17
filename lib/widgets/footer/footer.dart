import 'package:flutter/material.dart';
import 'package:website/widgets/footer/footer_mobile.dart';
import 'package:website/widgets/footer/footer_desktop.dart';
import 'package:website/widgets/footer/footer_tablet.dart';

Color footerTextColor = const Color.fromARGB(255, 204, 204, 0);

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 800) {
      if (screenWidth > 1000) {
        return const FooterDesktop();
      }
      return const FooterTablet();
    }
    return const FooterMobile();
  }
}
