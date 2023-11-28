import 'package:flutter/material.dart';
import 'package:slidevid/config/app_theme.dart';
import 'package:slidevid/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SlideVid',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const DiscoverScreen(),
    );
  }
}
