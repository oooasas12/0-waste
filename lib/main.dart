import 'package:flutter/material.dart';
import 'package:waste/pages/mainpages.dart';

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
  // การแสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 242, 210, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(-5, -2),
                    child: Transform.scale(
                      scale: 1.4,
                      child: Image.asset(
                        'assets/logo.png',
                        width: 100,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily:'PSL116',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'SRU\n',
                            ),
                            TextSpan(
                              text: 'ZERO WASTE',
                              style: TextStyle(
                                fontSize: 33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 50,
              ),

              // กรอกข้อมูล
              Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'เข้าสู่ระบบ',
                          style: TextStyle(fontSize: 12),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        // กรอกเบอร์โทรศัพท์
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          width: 322,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: Colors.black, // สีเส้นขอบ
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'หมายเลขโทรศัพท์',
                              hintStyle: const TextStyle(
                                  fontSize: 13, color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        // กรอกรหัสผ่าน
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          width: 322,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: Colors.black, // สีเส้นขอบ
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'รหัสผ่าน',
                              hintStyle: const TextStyle(
                                  fontSize: 13, color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(248.5, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              // ทำเมื่อกดปุ่ม
                              print('กดปุ่มแล้ว');
                            },
                            child: const Text(
                              'ลืมรหัสผ่าน',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ปุ่มเข้าสู่ระบบ และสร้างบัญชี
              Container(
                child: Column(
                  children: [
                    // ปุ่มเข้าสู่ระบบ
                    ElevatedButton(
                        onPressed: () {
                          // ทำเมื่อกดปุ่ม
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return mainpages();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 0),
                          primary: Color.fromARGB(255, 48, 39, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text('เข้าสู่ระบบ')),

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
                            style: TextStyle(fontSize: 10),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 0),
                          primary: Color.fromARGB(255, 140, 164, 59),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'สร้างบัญชี',
                          style: TextStyle(color: Colors.black),
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
