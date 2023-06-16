import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color footerTextColor = const Color.fromARGB(255, 204, 204, 0);

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: 320,
          color: const Color.fromARGB(255, 0, 102, 102),
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 160,
                      child: Image.asset('images/logo_with_motto.png',
                          fit: BoxFit.cover),
                    ),
                    Text(
                      'WellDone Inspection Inc is a DOB Class Two special inspections agency committed to providing comprehensive engineering reports.',
                      style: GoogleFonts.aleo(
                        height: 2,
                        color: footerTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(
                width: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black38,
              ),
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Services',
                      style: GoogleFonts.oswald(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text('Statement of Responsibility',
                        style: GoogleFonts.aleo(fontSize: 16)),
                    const SizedBox(height: 16),
                    Text('Pile Driving', style: GoogleFonts.aleo(fontSize: 16)),
                    const SizedBox(height: 16),
                    Text('Energy Code Compliance',
                        style: GoogleFonts.aleo(fontSize: 16)),
                  ],
                ),
              ),
              const VerticalDivider(
                width: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black38,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: GoogleFonts.oswald(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 16),
                      Text('10 Hallets Point, Astoria, NY, 11102',
                          style: GoogleFonts.merriweather(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(width: 16),
                      Text(
                        'welldoneinspection@gmail.com',
                        style: GoogleFonts.merriweather(fontSize: 16),
                        softWrap: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.call),
                      const SizedBox(width: 16),
                      Text('(917) 213-1886',
                          style: GoogleFonts.merriweather(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 56, 56, 56),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© 2023 WellDone Inspection, Inc. All rights reserved.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(width: 8),
              const Text(
                'Terms of Service',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              const SizedBox(width: 8),
              const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
