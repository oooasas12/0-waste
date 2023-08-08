import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});


  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // ตัวแปร
  String selectedValue = 'นาย'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownItems = [
    'นาย',
    'นาง',
    'นางสาว'
  ]; // รายการ DropdownMenuItem ของคุณ

  String selectedValue2 = 'กลุ่ม 1'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownItems2 = [
    'กลุ่ม 1',
    'กลุ่ม 2',
    'กลุ่ม 3'
  ]; // รายการ DropdownMenuItem ของคุณ

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50), // ช่องว่าง

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          // ชื่อหน้า
                          const Text(
                            'สร้างบัญชี',
                            style: TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 35,
                            ),
                          ),

                          const SizedBox(height: 10), // ช่องว่าง

                          // คำนำหน้าและกลุ่ม
                          Form(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    // คำนำหน้า
                                    Text('คำนำหน้า'),
                                    DropdownButtonFormField<String>(
                                        value: selectedValue,
                                        items:
                                            dropdownItems.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedValue = value!;
                                          });
                                        }),

                                    // กลุ่ม
                                    Text('กลุ่ม'),
                                  ],
                                ),
                                const SizedBox(height: 15), // ช่องว่าง

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // หมายเลขโทรศัพท์
                                    Text('หมายเลขโทรศัพท์'),

                                    const SizedBox(height: 15), // ช่องว่าง

                                    // Email
                                    Text('Email'),

                                    const SizedBox(height: 15), // ช่องว่าง

                                    // กำหนดรหัสผ่าน
                                    Text('กำหนดรหัสผ่าน'),

                                    const SizedBox(height: 15), // ช่องว่าง

                                    // ยืนยันรหัสผ่าน
                                    Text('ยืนยันรหัสผ่าน'),

                                    const SizedBox(height: 15), // ช่องว่าง

                                    // ข้อความเกี่ยวกันการตั้งรหัสผ่าน
                                    Text('บลาๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆๆ'),

                                    const SizedBox(height: 20), // ช่องว่าง

                                    Padding(
                                      padding: EdgeInsets.only(left: 248.5),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('ยืนยัน'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
