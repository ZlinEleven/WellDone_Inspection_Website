// import 'package:flutter/material.dart';
// import 'package:website/compartments/about_us.dart';
// import 'package:website/compartments/header.dart';
// import 'package:website/compartments/services.dart';

// var textColorScheme =
//     ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 206, 185, 0));

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;

//     return MaterialApp(
//       title: 'Construction Company',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromARGB(255, 17, 190, 153),
//         ),
//         textTheme: ThemeData().textTheme.copyWith(
//               titleMedium: const TextStyle(
//                 color: Color.fromARGB(255, 206, 185, 0),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//         // cardTheme: ThemeData().cardTheme.copyWith(
//         //   clipBehavior: ,
//         //   color: ,
//         //   elevation: ,
//         //   margin: ,
//         //   shadowColor: ,
//         //   shape: ,
//         //   surfaceTintColor: ,

//         // ),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             const Header(),
//             // const SliverToBoxAdapter(child: SizedBox(height: 30)),
//             SliverToBoxAdapter(
//               child: SizedBox(
//                 height: screenHeight - 330,
//                 child: Image.network(
//                   'https://image.cnbcfm.com/api/v1/image/106811484-1608045351058-gettyimages-1126750618-dsc_1540.jpeg?v=1608045431',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SliverToBoxAdapter(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     top: 50, left: 100.0, bottom: 20, right: 100),
//                 child: AboutUs(),
//               ),
//             ),
//             const SliverToBoxAdapter(
//               child: Services(),
//             ),
//             const SliverToBoxAdapter(child: SizedBox(height: 1000)),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:website/compartments/header.dart';
import 'package:website/providers/is_expanded.dart';
import 'package:website/widgets/navigation_items.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends ConsumerState<MyApp> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (_scrollController.offset >= 9.0) {
      ref.read(isExpandedProvider.notifier).setIsExpanded(false);
    } else {
      ref.read(isExpandedProvider.notifier).setIsExpanded(true);
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 17, 190, 153),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleMedium: const TextStyle(
                color: Color.fromARGB(255, 206, 185, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: const [
            Header(),
            SliverToBoxAdapter(child: SizedBox(height: 2000)),
          ],
        ),
      ),
    );
  }
}
