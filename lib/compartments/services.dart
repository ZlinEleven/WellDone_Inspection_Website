import 'package:flutter/material.dart';

import '../widgets/service_item.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(context) {
    final _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: _screenHeight - 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 224, 187, 187),
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
          const SizedBox(height: 150),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 350.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceItem(
                  serviceName: 'TR1 Statement of Responsibility',
                  serviceDescription:
                      'The main technical report to be filed with the NYC DOB.',
                ),
                ServiceItem(
                  serviceName: 'TR5 Pile Driving',
                  serviceDescription:
                      'The technical report for the Pile Driving and Deep Foundation Elements.',
                ),
                ServiceItem(
                  serviceName: 'TR8 Energy Code Compliance',
                  serviceDescription:
                      'The technical report for the Energy Code Compliance Inspections.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
