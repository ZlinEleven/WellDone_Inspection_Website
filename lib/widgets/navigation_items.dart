import 'package:flutter/material.dart';

class NavigationItems extends StatelessWidget {
  const NavigationItems(this.title, {super.key});

  final String title;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        // onHover: (value) => ,
        onPressed: () {
          // Implement navigation logic here
        },
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
