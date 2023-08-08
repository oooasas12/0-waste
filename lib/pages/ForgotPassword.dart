import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50), // ช่องว่าง

                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ชื่อหน้า
                      Column(
                        children: [
                          const Text(
                            'สร้างรหัสผ่านใหม่',
                            style: TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
