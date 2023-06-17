import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:website/widgets/footer/footer.dart';
import 'package:website/widgets/header/header.dart';
import 'package:website/providers/is_expanded.dart';
import 'package:website/widgets/header/main_drawer.dart';
import 'package:website/widgets/hero_section/hero_section.dart';
import 'package:website/widgets/about_us/about_us.dart';
import 'package:website/widgets/services/services.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends ConsumerState<LandingPage> {
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
    final screenWidth = MediaQuery.of(context).size.width;
    final isExpanded = ref.watch(isExpandedProvider);

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
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: screenWidth > 800
            ? null
            : AppBar(
                toolbarHeight: 100,
                backgroundColor: isExpanded
                    ? Colors.white
                    : const Color.fromARGB(99, 0, 0, 0),
                iconTheme: IconThemeData(
                    color: isExpanded ? Colors.black : Colors.white),
                actions: [
                  SizedBox(
                    height: 80,
                    width: 160,
                    child: Image.asset('images/logo_with_motto.png',
                        fit: BoxFit.cover),
                  ),
                ],
              ),
        drawer: screenWidth > 800 ? null : const MainDrawer(),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            if (screenWidth > 800) const Header(),
            const SliverToBoxAdapter(child: HeroSection()),
            const SliverToBoxAdapter(
              child: AboutUs(),
            ),
            const SliverToBoxAdapter(
              child: Services(),
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
            // SliverToBoxAdapter(
            //   child: SizedBox(height: 2000),
            // )
          ],
        ),
      ),
    );
  }
}
