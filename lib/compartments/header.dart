import 'package:flutter/material.dart';

import '../widgets/navigation_items.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 200, right: 180),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Container(
            width: 100.0,
            height: 100.0,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThyEKIq_a7eWEwVEoo1aTBQ6gV1KQ4BI8ojEQgnl0ITQ&s'),
          ),
          // Navigation links
          Row(
            children: [
              NavigationItems('About'),
              NavigationItems('Services'),
              NavigationItems('Resources'),
              NavigationItems('Press'),
              NavigationItems('Work'),
              NavigationItems('Career'),
              NavigationItems('Contact'),
            ],
          ),
        ],
      ),
    );
  }
}
