import 'package:flutter/material.dart';
import '../widgets/navigation_items.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() {
    return _HeaderState();
  }
}

class _HeaderState extends State<Header> {
  // late ScrollController _scrollController;
  // double _headerOpacity = 1.0;

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController = ScrollController()
  //     ..addListener(
  //       () {
  //         setState(
  //           () {
  //             _headerOpacity = (1.0 - _scrollController.offset).clamp(0.0, 1.0);
  //             print(_scrollController.offset);
  //           },
  //         );
  //       },
  //     );
  // }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      collapsedHeight: 110.0,
      backgroundColor: const Color.fromARGB(200, 0, 0, 0),
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.0,
        title: Container(
          height: 90.0,
          padding: const EdgeInsets.only(top: 16, left: 200, right: 180),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              SizedBox(
                width: 100.0,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThyEKIq_a7eWEwVEoo1aTBQ6gV1KQ4BI8ojEQgnl0ITQ&s'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
