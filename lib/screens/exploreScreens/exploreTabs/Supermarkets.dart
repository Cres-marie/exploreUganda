import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Supermarkets extends StatefulWidget {
  const Supermarkets({super.key});

  @override
  State<Supermarkets> createState() => _SupermarketsState();
}

class _SupermarketsState extends State<Supermarkets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: bpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Supermarkets')
            ]
          )
        )
      )

    );
  }
}