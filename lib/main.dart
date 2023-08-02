import 'package:flutter/material.dart';
import 'package:waste/pages/ForgotPassword.dart';
import 'package:waste/pages/mainpages.dart';
import 'package:waste/pages/CreateAccount.dart';

void main() {
  runApp(const MyApp());
}

// สร้าง Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ตัวแปรรับข้อมูล
  final _formKey = GlobalKey<FormState>();

  // // ตัวแปรรับข้อมูลจาก TextField
  TextEditingController phoneText = TextEditingController();
  TextEditingController passText = TextEditingController();

  // // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _phone = '';
  String _pass = '';

  // // ตัวแปรของไอคอนซ่อนและเปิดเผยรหัสผ่าน
  var _obscureText = true;

  // การแสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 242, 210, 1),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              // โลโก้กับชื่อแอพ
              const SizedBox(height: 85), // ช่องว่าง

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, 0),
                      child: Transform.scale(
                        scale: 1.15,
                        child: Image.asset(
                          'assets/logo.png',
                          width: 100,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: const Offset(-5, 5),
                          child: const Text(
                            'SRU',
                            style:
                                TextStyle(fontFamily: 'PSL114', fontSize: 42),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-5, -12),
                          child: const Text(
                            'ZERO WASTE',
                            style:
                                TextStyle(fontFamily: 'PSL114', fontSize: 31),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40), // ช่องว่าง

              // กรอกข้อมูล
              Container(
                width: 322,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ข้อความเข้าสุ่ระบบ
                      const Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(fontFamily: 'PSL114', fontSize: 18),
                      ),

                      const SizedBox(height: 10), // ช่องว่าง

                      // กรอกเบอร์โทรศัพท์
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'กรุณากรอกหมายเลขโทรศัพท์!';
                          }

                          return null;
                        },
                        controller:
                            phoneText, // ข้อความที่ป้อนใน TextField นี้ ถูกเก็บไว้ในตัวแปร phoneText
                        cursorColor: const Color.fromARGB(255, 140, 164, 59),
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            fontFamily: 'PSL114',
                            fontSize: 18,
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(
                              left: 20, top: 12, bottom: 12),
                          hintText: 'หมายเลขโทรศัพท์',
                          hintStyle: const TextStyle(
                              fontFamily: 'PSL114', fontSize: 19),
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

                      const SizedBox(height: 15), // ช่องว่าง

                      // กรอกรหัสผ่าน
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'กรุณากรอกรหัสผ่าน!';
                          }

                          return null;
                        },
                        controller:
                            passText, // ข้อความที่ป้อนใน TextField นี้ ถูกเก็บไว้ในตัวแปร passText
                        obscureText: _obscureText,
                        cursorColor: const Color.fromARGB(255, 140, 164, 59),
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            fontFamily: 'PSL114',
                            fontSize: 18,
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: 'รหัสผ่าน',
                          hintStyle: const TextStyle(
                              fontFamily: 'PSL114', fontSize: 19),
                          suffixIcon: GestureDetector(
                            // ไอคอนซ่อนและเปิดเผยรหัสผ่าน
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
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

                      const SizedBox(height: 5), // ช่องว่าง

                      // ลืมรหัสผ่าน
                      Padding(
                        padding: const EdgeInsets.fromLTRB(248.5, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            // ทำเมื่อกดปุ่ม
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ForgotPassword();
                            }));
                          },
                          style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 140, 164, 59),
                          ),
                          child: const Text(
                            'ลืมรหัสผ่าน',
                            style: TextStyle(
                                fontFamily: 'PSL114',
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15), // ช่องว่าง

              // ปุ่มเข้าสู่ระบบ และสร้างบัญชี
              Container(
                child: Column(
                  children: [
                    // ปุ่มเข้าสู่ระบบ
                    ElevatedButton(
                        onPressed: () {
                          // ทำเมื่อกดปุ่ม

                          // เมื่อกดปุ่มเรียกใช้ฟังก์ชันที่ตรวจสอบ validator
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              // เก็บ value ใน TextField ลงตัวแปร
                              _phone = phoneText.text;
                              _pass = passText.text;
                            });

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return mainpages();
                            }));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 48, 39, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'เข้าสู่ระบบ',
                          style: TextStyle(fontFamily: 'PSL114', fontSize: 20),
                        )),

                    // ข้อความ 'หรือ' ขั้นกลาง
                    Row(
                      children: [
                        // เส้นซ้าย
                        Container(
                          width: 147,
                          height: 2,
                          color: Colors.black,
                        ),

                        // ข้อความ
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Text(
                            'หรือ',
                            style:
                                TextStyle(fontFamily: 'PSL114', fontSize: 18),
                          ),
                        ),

                        // เส้นขวา
                        Container(
                          width: 147,
                          height: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),

                    // ปุ่มสร้างบัญชี
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return CreateAccount();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 140, 164, 59),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'สร้างบัญชี',
                          style: TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 20,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
