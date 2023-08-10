import 'package:flutter/material.dart';

import 'widget/my_textformfield.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // ตัวแปร
  final _formKeyCA = GlobalKey<FormState>();

  // รับค่าจาก TextField
  // ส่วนหัว
  TextEditingController caIntroText = TextEditingController();
  TextEditingController caGroupText = TextEditingController();
  // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _caIntro = '';
  String _caGroup = '';

  // ส่วนท้าย
  TextEditingController caNameText = TextEditingController();
  TextEditingController caSurnameText = TextEditingController();
  TextEditingController caTeleText = TextEditingController();
  TextEditingController caEmailText = TextEditingController();
  TextEditingController caCrePassText = TextEditingController();
  TextEditingController caConPassText = TextEditingController();
  // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _caName = '';
  String _caSurname = '';
  String _caTele = '';
  String _caEmail = '';
  String _caCrePass = '';
  String _caConPass = '';

  // ตัวแปรของไอคอนซ่อนและเปิดเผยรหัสผ่าน
  bool _caCrePassObscureText = true;
  bool _caConPassObscureText = true;

  // ตัวแปรข้อมูลที่ใช้กับ DropdownButton
  String selectedIntro = 'คำนำหน้า'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownIntros = [
    'คำนำหน้า',
    'นาย',
    'นาง',
    'นางสาว'
  ]; // รายการ DropdownMenuItem ของคำนำหน้าชื่อ

  String selectedGroup = 'กลุ่ม'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownGroups = [
    'กลุ่ม',
    'กลุ่ม 1',
    'กลุ่ม 2',
    'กลุ่ม 3'
  ]; // รายการ DropdownMenuItem ของกลุ่ม

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
            child: Form(
              key: _formKeyCA,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50), // ช่องว่าง

                  // ส่วนหัว
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ชื่อหน้า
                        Text(
                          'สร้างบัญชี',
                          style: TextStyle(
                            fontFamily: 'PSL114',
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10), // ช่องว่าง

                  // ส่วนรายละเอียด
                  Container(
                    child: Column(
                      children: [
                        // คำนำหน้าและกลุ่ม
                        // คำนำหน้า
                        DropdownButtonFormField<String>(
                          value: selectedIntro,
                          onChanged: (newValue) {
                            setState(() {
                              selectedIntro = newValue!;
                            });
                          },
                          items: dropdownIntros
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                  fontFamily: 'PSL114',
                                  fontSize: 19,
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // กลุ่ม
                        DropdownButtonFormField<String>(
                          value: selectedGroup,
                          onChanged: (newValue) {
                            setState(() {
                              selectedGroup = newValue!;
                            });
                          },
                          items: dropdownGroups
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                  fontFamily: 'PSL114',
                                  fontSize: 19,
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // ชื่อ นามสกุล
                        // // ชื่อ
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากรอกชื่อ!';
                            }

                            return null;
                          },
                          controller: caNameText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'ชื่อ',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // // นามสกุล
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากรอกนามสกุล!';
                            }

                            return null;
                          },
                          controller: caSurnameText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'นามสกุล',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // หมายเลขโทรศัพท์
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากรอกหมายเลขโทรศัพท์!';
                            }

                            return null;
                          },
                          controller: caTeleText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'หมายเลขโทรศัพท์',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // Email
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากรอก Email!';
                            }

                            return null;
                          },
                          controller: caEmailText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // กำหนดรหัสผ่าน
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากำหนดรหัสผ่าน!';
                            }

                            return null;
                          },
                          controller: caCrePassText,
                          obscureText: _caCrePassObscureText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'กำหนดรหัสผ่าน',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            suffixIcon: GestureDetector(
                              // ไอคอนซ่อนและเปิดเผยรหัสผ่าน
                              onTap: () {
                                setState(() {
                                  _caCrePassObscureText =
                                      !_caCrePassObscureText;
                                });
                              },
                              child: Icon(
                                _caCrePassObscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // ยืนยันรหัสผ่าน
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณายืนยันรหัสผ่าน!';
                            }

                            return null;
                          },
                          controller: caConPassText,
                          obscureText: _caConPassObscureText,
                          cursorColor: const Color.fromARGB(255, 140, 164, 59),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 16,
                            ),
                            isDense: true,
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                              top: 8,
                              bottom: 8,
                            ),
                            hintText: 'ยืนยันรหัสผ่าน',
                            hintStyle: const TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 19,
                              color: Colors.grey,
                            ),
                            suffixIcon: GestureDetector(
                              // ไอคอนซ่อนและเปิดเผยรหัสผ่าน
                              onTap: () {
                                setState(() {
                                  _caConPassObscureText =
                                      !_caConPassObscureText;
                                });
                              },
                              child: Icon(
                                _caConPassObscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 140, 164, 59),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 39, 20),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10), // ระยะห่าง

                        // ข้อความแนะนำการตั้งรหัสผ่าน
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'รหัสผ่านไม่ต่ำกว่า 6 ตัว ประกอบด้วยตัวเลขและตัวอักษร a-z อย่างน้อย 1 ตัว',
                              style: TextStyle(
                                fontFamily: 'PSL114',
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // ปุ่มยืนยัน
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: ElevatedButton(
                            onPressed: () {
                              // ทำเมื่อกดปุ่ม
                              if (_formKeyCA.currentState!.validate()) {
                                setState(() {
                                  _caIntro = selectedIntro;
                                  _caGroup = selectedGroup;
                                  _caName = caNameText.text;
                                  _caSurname = caSurnameText.text;
                                  _caTele = caTeleText.text;
                                  _caEmail = caEmailText.text;
                                  _caCrePass = caCrePassText.text;
                                  _caConPass = caConPassText.text;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(110, 0),
                              backgroundColor:
                                  const Color.fromARGB(255, 48, 39, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: const Text(
                              'ยืนยัน',
                              style:
                                  TextStyle(fontFamily: 'PSL114', fontSize: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
