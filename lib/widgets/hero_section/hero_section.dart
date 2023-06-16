import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight - 155,
      child: Image.network(
        'https://image.cnbcfm.com/api/v1/image/106811484-1608045351058-gettyimages-1126750618-dsc_1540.jpeg?v=1608045431',
        fit: BoxFit.cover,
      ),
    );
  }
}
