import 'package:flutter/material.dart';

class NonTurnoverCompost extends StatefulWidget {
  const NonTurnoverCompost({super.key});

  @override
  State<NonTurnoverCompost> createState() => _NonTurnoverCompostState();
}

class _NonTurnoverCompostState extends State<NonTurnoverCompost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'ปุ๋ยหมักแบบไม่พลิกกับกอง',
          style: TextStyle(
            fontFamily: 'PSL114',
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}