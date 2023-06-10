import 'package:flutter/material.dart';
import 'package:website/compartments/about_us.dart';
import 'package:website/compartments/header.dart';
import 'package:website/compartments/services.dart';

var textColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 206, 185, 0));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      title: 'Construction Company',
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
        // cardTheme: ThemeData().cardTheme.copyWith(
        //   clipBehavior: ,
        //   color: ,
        //   elevation: ,
        //   margin: ,
        //   shadowColor: ,
        //   shape: ,
        //   surfaceTintColor: ,

        // ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const Header(),
            // const SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenHeight - 330,
                child: Image.network(
                  'https://image.cnbcfm.com/api/v1/image/106811484-1608045351058-gettyimages-1126750618-dsc_1540.jpeg?v=1608045431',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 50, left: 100.0, bottom: 20, right: 100),
                child: AboutUs(),
              ),
            ),
            const SliverToBoxAdapter(
              child: Services(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 1000)),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               pinned: true,
//               floating: false,
//               expandedHeight: 150, // adjust the height as needed
//               // Add your navigation bar content here
//               flexibleSpace: FlexibleSpaceBar(
//                 title: Text('Your Inspection Company'),
//               ),
//             ),
//             // Add other slivers or content below the SliverAppBar
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text('Item $index'),
//                   );
//                 },
//                 childCount: 20, // replace with your actual content
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
