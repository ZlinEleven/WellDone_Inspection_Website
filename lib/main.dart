import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:website/screens/landing.dart';

void main() {
  runApp(
    const ProviderScope(child: LandingPage()),
  );
}
