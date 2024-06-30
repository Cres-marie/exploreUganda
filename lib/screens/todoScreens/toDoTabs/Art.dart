import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Art extends StatefulWidget {
  const Art({super.key});

  @override
  State<Art> createState() => _ArtState();
}

class _ArtState extends State<Art> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: bpadding,
        child: Column(
          children: [
            Text('ART')
          ],
        ),
      ),
    );
  }
}