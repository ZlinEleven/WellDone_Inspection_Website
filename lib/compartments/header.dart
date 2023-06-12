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
    return SliverAppBar(
      pinned: true,
      collapsedHeight: 101.0,
      expandedHeight: 150,
      backgroundColor:
          const Color.fromARGB(99, 0, 0, 0), // Color after collapse
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsetsDirectional.only(
          // top: 12.5,
          start: 145,
          end: 145,
        ),
        expandedTitleScale: 1.1,
        centerTitle: true,
        background: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Hello! Welcome to WellDone Inspections.',
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
          children: [
            const FlutterLogo(
                size: 68.0), // Replace this with your company logo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Listen Better.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Plan Better.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text('Build Better.',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const Spacer(),
            const Row(
              children: [
                // NavigationBar(destinations: destinations)
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
