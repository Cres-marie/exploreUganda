import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Technology extends StatefulWidget {
  const Technology({super.key});

  @override
  State<Technology> createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
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