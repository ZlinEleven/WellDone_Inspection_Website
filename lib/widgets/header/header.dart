import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/widgets/header/header_mobile.dart';
import 'package:website/widgets/header/header_tablet_desktop.dart';
import 'navigation_items.dart';

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
        title: screenWidth > 800
            ? const HeaderTabletDesktop()
            : const SizedBox(height: 150, child: HeaderMobile()),
      ),
    );
  }
}
