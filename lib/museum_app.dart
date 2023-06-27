import 'package:flutter/material.dart';
import 'package:monalisa/artwork.dart';

class MuseumApp extends StatelessWidget {
  const MuseumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Museum',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Artwork(),
    );
  }
}
