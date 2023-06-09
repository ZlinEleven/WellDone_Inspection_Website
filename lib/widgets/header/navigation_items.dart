import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../providers/is_expanded.dart';

class NavigationItems extends ConsumerStatefulWidget {
  const NavigationItems(this.title, {super.key});

  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NavigationItemState();
  }
}

class _NavigationItemState extends ConsumerState<NavigationItems> {
  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final isExpanded = ref.watch(isExpandedProvider);
    return Container(
      alignment: AlignmentDirectional.center,
      child: TextButton(
        // onHover: (value) => ,
        onPressed: () {
          // Implement navigation logic here
        },
        child: Text(
          widget.title,
          style: GoogleFonts.openSans(
            fontSize:
                screenWidth > 1200 ? 15 : (screenWidth - 800) / 120 + 10.0,
            fontWeight: FontWeight.bold,
            // fontWeight: FontWeight.w900,
            color: !isExpanded ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
