import 'package:flutter/material.dart';

class Biogas extends StatefulWidget {
  const Biogas({super.key});

  @override
  State<Biogas> createState() => _BiogasState();
}

class _BiogasState extends State<Biogas> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'ก๊าซชีวภาพ',
          style: TextStyle(
            fontFamily: 'PSL114',
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}