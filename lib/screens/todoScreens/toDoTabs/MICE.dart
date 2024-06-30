import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class MICE extends StatefulWidget {
  const MICE({super.key});

  @override
  State<MICE> createState() => _MICEState();
}

class _MICEState extends State<MICE> {
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