import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Agriculture extends StatefulWidget {
  const Agriculture({super.key});

  @override
  State<Agriculture> createState() => _AgricultureState();
}

class _AgricultureState extends State<Agriculture> {
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