import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: const NetworkImage(
          //         'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/West_side_of_Manhattan_from_Hudson_Commons_%2895103p%29.jpg/1200px-West_side_of_Manhattan_from_Hudson_Commons_%2895103p%29.jpg'),
          //     fit: BoxFit.cover,
          //     colorFilter: ColorFilter.mode(
          //         Colors.black.withOpacity(0.5), BlendMode.colorBurn),
          //   ),
          // ),
          color: Colors.grey,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'About Us',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('Company Overview'),
                    Text('Our Team'),
                    Text('Testimonials'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Service 1'),
                    Text('Service 2'),
                    Text('Service 3'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Resources',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Blog'),
                    Text('Guides'),
                    Text('FAQs'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text('10 Hallets Point, Astoria, NY, 11102'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        Text('welldoneinspection@gmail.com'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        Text('(917) 213-1886'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 56, 56, 56),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(), // Insert comapny logo
              SizedBox(width: 16),
              Text(
                '© 2023 WellDone Inspection, Inc. All rights reserved.',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Text(
                'Terms of Service',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              SizedBox(width: 8),
              Text(
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
