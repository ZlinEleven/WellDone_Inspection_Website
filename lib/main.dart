import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:website/compartments/footer.dart';
import 'package:website/compartments/header.dart';
import 'package:website/providers/is_expanded.dart';
import 'compartments/about_us.dart';
import 'compartments/services.dart';

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
    if (_scrollController.offset >= 49.0) {
      ref.read(isExpandedProvider.notifier).setIsExpanded(false);
    } else {
      ref.read(isExpandedProvider.notifier).setIsExpanded(true);
    }
  }

  @override
  Widget build(context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
              bodySmall: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const Header(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenHeight - 155,
                child: Image.network(
                  'https://image.cnbcfm.com/api/v1/image/106811484-1608045351058-gettyimages-1126750618-dsc_1540.jpeg?v=1608045431',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: AboutUs(),
            ),
            const SliverToBoxAdapter(
              child: Services(),
            ),
            SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
