import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation_items.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      forceMaterialTransparency: true,
      collapsedHeight: 101.0,
      expandedHeight: 150,
      backgroundColor:
          const Color.fromARGB(99, 0, 0, 0), // Color after collapse
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsetsDirectional.symmetric(horizontal: 70),
        expandedTitleScale: 1.2,
        centerTitle: true,
        background: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome to WellDone Inspections.',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
              width: 160,
              child:
                  Image.asset('images/logo_with_motto.png', fit: BoxFit.cover),
            ),
            const Row(
              children: [
                NavigationItems('About'),
                NavigationItems('Services'),
                NavigationItems('Resources'),
                // NavigationItems('Press'),
                NavigationItems('Work'),
                // NavigationItems('Career'),
                NavigationItems('Contact'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
