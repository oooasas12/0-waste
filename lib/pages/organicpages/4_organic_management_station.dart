import 'package:flutter/material.dart';

class OrganicManagementStation extends StatefulWidget {
  const OrganicManagementStation({super.key});

  @override
  State<OrganicManagementStation> createState() => _OrganicManagementStationState();
}

class _OrganicManagementStationState extends State<OrganicManagementStation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'สถานีจัดการขยะอินทรีย์',
          style: TextStyle(
            fontFamily: 'PSL114',
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}