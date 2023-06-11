import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/is_expanded.dart';

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
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
            color: isExpanded ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
