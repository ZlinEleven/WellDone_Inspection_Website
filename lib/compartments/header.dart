import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navigation_items.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() {
    return _HeaderState();
  }
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SliverAppBar(
      pinned: true,
      collapsedHeight: 101.0,
      expandedHeight: 150,
      backgroundColor:
          const Color.fromARGB(99, 0, 0, 0), // Color after collapse
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsetsDirectional.symmetric(
          horizontal: screenWidth > 1280 ? (screenWidth - 1280) / 2 : 0,
        ),
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
              mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }
}
