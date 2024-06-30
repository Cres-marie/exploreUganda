import 'package:flutter/material.dart';

class CustomAppRow extends StatefulWidget {
  const CustomAppRow({super.key});

  @override
  State<CustomAppRow> createState() => _CustomAppRowState();
}

class _CustomAppRowState extends State<CustomAppRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined))
                    ],
                  );
  }
}