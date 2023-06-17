import 'package:flutter/material.dart';

import 'service_card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight - 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 224, 187, 187),
            Color.fromARGB(103, 224, 187, 187)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Services',
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 100),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServiceCard(
                title: 'TR1 Statement of Responsibility',
                description:
                    'The main technical report to be filed with the NYC DOB.',
              ),
              ServiceCard(
                title: 'TR5 Pile Driving',
                description:
                    'The technical report for the Pile Driving and Deep Foundation Elements.',
              ),
              ServiceCard(
                title: 'TR8 Energy Code Compliance',
                description:
                    'The technical report for the Energy Code Compliance Inspections.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
