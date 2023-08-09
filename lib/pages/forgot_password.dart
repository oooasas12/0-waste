import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //ตัวแปร
  final _formKey = GlobalKey<FormState>();

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50), // ช่องว่าง

                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          // ชื่อหน้า
                          const Text(
                            'สร้างรหัสผ่านใหม่',
                            style: TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 35,
                            ),
                          ),

                          const SizedBox(height: 10), // ช่องว่าง

                          // หมายเลขโทรศัพท์
                          const Text('หมายเลขโทรศัพท์'),

                          // กำหนดรหัสผ่าน
                          const Text('กำหนดรหัสผ่าน'),

                          // ยืนยันรหัสผ่าน
                          const Text('ยืนยันรหัสผ่าน'),

                          // ข้อความเกี่ยวกันการตั้งรหัสผ่าน
                          const Text('รหัสผ่านไม่ต่ำกว่า 6 ตัว'),

                          const SizedBox(height: 20), // ช่องว่าง

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
