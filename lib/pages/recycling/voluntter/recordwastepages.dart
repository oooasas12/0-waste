import 'package:flutter/material.dart';
import 'package:waste/pages/recycling/volunteerpages.dart';
//import 'widget/my_textformfield.dart';

class recordwastepages extends StatefulWidget {
  const recordwastepages({super.key});

  @override
  State<recordwastepages> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<recordwastepages> {
  // ตัวแปร
  final _formKeyCA = GlobalKey<FormState>();
  TextEditingController caYearText = TextEditingController();
  TextEditingController caMonText = TextEditingController();
  TextEditingController caIncomeText = TextEditingController();
  // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _caYear = '';
  String _caMon = '';
  String _caIncome = '';

  TextEditingController caIDText = TextEditingController();
  TextEditingController caWText = TextEditingController();
  // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _caID = '';
  String _caW = '';
  // ตัวแปรข้อมูลที่ใช้กับ DropdownButton

  String selectedYear = 'วัน'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownYears = [
    'วัน',
    '1',
    '2',
    '3'
  ]; // รายการ DropdownMenuItem ของคำนำหน้าชื่อ

  String selectedMon = 'เดือน'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownMons = [
    'เดือน',
    'มกราคม',
    'กุมภาพันธ์',
    'มีนาคม'
  ];// รายการ DropdownMenuItem ของกลุ่ม
  String selectedIncome = 'ปี'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownIncomes = [
    'ปี',
    '2000',
    '2001',
    '2002'
  ];

  String selectedW = 'ประเภทขยะ'; // ตั้งค่าค่าที่เลือกในรายการเริ่มต้น
  List<String> dropdownW = [
    'ประเภทขยะ',
    'ขยะแห้ง',
    '2001',
    '2002'
  ];
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: _formKeyCA,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Row แรก
                      Column(
                        children: [
                          Container(
                            width: 285,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Color(0xFFB3C469),
                              borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                              children: [
                                Image.asset(
                                  'assets/re3.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                  width: 80,
                                  height: 80,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    style:  TextStyle(
                                      color: Colors.black,
                                      fontFamily:'PSL116',

                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [

                                      TextSpan(
                                        text: 'บันทึกรายได้ขายขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                        style: TextStyle(
                                          fontSize: 35,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 500,
                    height: 240,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Row แรก
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 40,

                              child: DropdownButtonFormField<String>(
                                value: selectedYear,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedYear = newValue!;
                                  });
                                },
                                items: dropdownYears
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        fontFamily: 'PSL114',
                                        fontSize: 24,
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
                            ),
                            Container(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 110,
                              height: 40,
                              // กลุ่ม
                              child: DropdownButtonFormField<String>(
                                value: selectedMon,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedMon = newValue!;
                                  });
                                },
                                items: dropdownMons
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        fontFamily: 'PSL114',
                                        fontSize: 24,
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
                            ),
                            Container(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 110,
                              height: 40,
                              // กลุ่ม
                              child: DropdownButtonFormField<String>(
                                value: selectedMon,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedMon = newValue!;
                                  });
                                },
                                items: dropdownMons
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        fontFamily: 'PSL114',
                                        fontSize: 24,
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
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // Row 2
                        Row(
                          children: [
                            Container(

                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/re11.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 240,
                              height: 40,
                              // กลุ่ม
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'กรุณากรอกชื่อ!';
                                  }

                                  return null;
                                },
                                controller: caIDText,
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
                                  hintText: 'รหัสผู้รีไซเคิลขยะ',
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
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(

                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/re2.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 240,
                              height: 40,
                              // กลุ่ม
                              child: DropdownButtonFormField<String>(
                                value: selectedW,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedW = newValue!;
                                  });
                                },
                                items: dropdownW
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        fontFamily: 'PSL114',
                                        fontSize: 24,
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(

                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/re8.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 240,
                              height: 40,
                              // กลุ่ม
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'กรุณากรอกชื่อ!';
                                  }

                                  return null;
                                },
                                controller: caWText,
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
                                  hintText: 'น้ำหนักขยะ',
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: ElevatedButton(
                          onPressed: () {
                            // ทำเมื่อกดปุ่ม
                            if (_formKeyCA.currentState!.validate()) {
                              setState(() {
                                _caYear = selectedYear;
                                _caMon = selectedMon;
                                _caIncome = selectedIncome;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 0),
                            backgroundColor:
                            const Color.fromARGB(50, 255, 255, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text(
                            'ยกเลิก',
                            style:
                            TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 24,
                              color: Colors.black,),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            // ทำเมื่อกดปุ่ม
                            if (_formKeyCA.currentState!.validate()) {
                              setState(() {
                                _caYear = selectedYear;
                                _caMon = selectedMon;
                                _caIncome = selectedIncome;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 0),
                            backgroundColor:
                            const Color.fromARGB(50, 255, 255, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text(
                            'บันทึก',
                            style: TextStyle(
                              fontFamily: 'PSL114',
                              fontSize: 24,
                              color: Colors.black,
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),


                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 100,
                        ),
                        const SizedBox(width: 20), // ใส่ SizedBox เพื่อให้มีระยะห่างระหว่าง Container
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context) {
                                  return volunteerpages();
                                }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                            minimumSize: const Size(10, 10), // กำหนดขนาดของปุ่ม
                            padding: const EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                            side: BorderSide.none, // กำหนดไม่มีกรอบสี
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF302714),
                              borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style:  TextStyle(
                                      color: Colors.white,
                                      fontFamily:'PSL116',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ย้อนกลับ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
