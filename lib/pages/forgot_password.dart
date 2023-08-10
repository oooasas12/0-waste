import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //ตัวแปร
  final _formKeyFP = GlobalKey<FormState>();

  //
  TextEditingController fpTeleText = TextEditingController();
  TextEditingController fpCrePassText = TextEditingController();
  TextEditingController fpConPassText = TextEditingController();

  //
  String _fpTele = '';
  String _fpCrePass = '';
  String _fpConPass = '';

  //
  bool _fpCrePassObscureText = true;
  bool _fpConPassObscureText = true;

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
            child: Form(
              key: _formKeyFP,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50), // ช่องว่างด้านบน

                  // ส่วนหัว
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ชื่อหน้า
                        Text(
                          'สร้างรหัสผ่านใหม่',
                          style: TextStyle(
                            fontFamily: 'PSL114',
                            fontSize: 35,
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ), // ระยะห่าง

                  // ส่วนรายละเอียด
                  Container(
                    child: Column(
                      children: [
                        // หมายเลขโทรศัพท์
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากรอกหมายเลขโทรศัพท์!';
                            }

                            return null;
                          },
                          controller: fpTeleText,
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

                        // กำหนดรหัสผ่าน
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'กรุณากำหนดรหัสผ่าน!';
                            }

                            return null;
                          },
                          controller: fpCrePassText,
                          obscureText: _fpCrePassObscureText,
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
                                  _fpCrePassObscureText =
                                      !_fpCrePassObscureText;
                                });
                              },
                              child: Icon(
                                _fpCrePassObscureText
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
                              return 'กรุณากำหนดรหัสผ่าน!';
                            }

                            return null;
                          },
                          controller: fpConPassText,
                          obscureText: _fpConPassObscureText,
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
                                  _fpConPassObscureText =
                                      !_fpConPassObscureText;
                                });
                              },
                              child: Icon(
                                _fpConPassObscureText
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
                              if (_formKeyFP.currentState!.validate()) {
                                setState(() {
                                  _fpTele = fpTeleText.text;
                                  _fpCrePass = fpCrePassText.text;
                                  _fpConPass = fpConPassText.text;
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
