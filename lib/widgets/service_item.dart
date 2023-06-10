import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.serviceName,
    required this.serviceDescription,
  });

  final String serviceName;
  final String serviceDescription;

  @override
  Widget build(context) {
    return Card(
      color: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
        child: SizedBox(
          width: 300,
          height: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
            child: Column(
              children: [
                // Service logo
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThyEKIq_a7eWEwVEoo1aTBQ6gV1KQ4BI8ojEQgnl0ITQ&s'),
                const SizedBox(height: 30),
                // Service name
                Text(serviceName,
                    style: GoogleFonts.ptSerif(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                const SizedBox(height: 25),
                // Service Description
                Text(
                  serviceDescription,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 17, 99, 165),
                    shape: const BeveledRectangleBorder(),
                  ),
                  child: Text(
                    'READ MORE',
                    style: GoogleFonts.ptSerif(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
