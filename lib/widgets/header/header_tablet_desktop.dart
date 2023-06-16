import 'package:flutter/material.dart';
import 'package:website/widgets/header/navigation_items.dart';

class HeaderTabletDesktop extends StatelessWidget {
  const HeaderTabletDesktop({super.key});

  @override
  Widget build(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 80,
          width: 160,
          child: Image.asset('images/logo_with_motto.png', fit: BoxFit.cover),
        ),
        const Row(
          children: [
            // NavigationItems('About'),
            // NavigationItems('Services'),
            // NavigationItems('Resources'),
            // NavigationItems('Press'),
            // NavigationItems('Work'),
            // NavigationItems('Career'),
            NavigationItems('Contact'),
          ],
        ),
      ],
    );
  }
}
