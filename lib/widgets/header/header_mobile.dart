import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/is_expanded.dart';

class HeaderMobile extends ConsumerWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(context, WidgetRef ref) {
    final isExpanded = ref.watch(isExpandedProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,
                color: isExpanded ? Colors.black : Colors.white)),
        SizedBox(
          height: 80,
          width: 160,
          child: Image.asset('images/logo_with_motto.png', fit: BoxFit.cover),
        ),
      ],
    );
  }
}
