import 'package:flutter/material.dart';

class Vermicompost extends StatefulWidget {
  const Vermicompost({super.key});

  @override
  State<Vermicompost> createState() => _VermicompostState();
}

class _VermicompostState extends State<Vermicompost> {
  // ตัวแปร
  final _formKeyInc1 = GlobalKey<FormState>();

  // รับค่าจาก TextField
  TextEditingController inc1YearText = TextEditingController(); // ปี
  TextEditingController inc1MonthText = TextEditingController(); // เดือน
  TextEditingController inc1TrashSourceText =
      TextEditingController(); // แหล่งที่มาขยะ
  TextEditingController inc1TrashSourceNameText =
      TextEditingController(); // ชื่อแหล่งที่มาขยะ
  TextEditingController inc1TypeText =
      TextEditingController(); // ประเภทขยะอินทรีย์
  TextEditingController inc1IncKiloText =
      TextEditingController(); // ปริมาณขยะอินทรีย์ (กก.)
  TextEditingController inc1CompostText = TextEditingController(); // ปุ๋ย
  TextEditingController inc1CompostKiloText =
      TextEditingController(); // ปริมาณปุ๋ย (กก.)
  TextEditingController inc1CompostSaleIncomeText =
      TextEditingController(); // รายได้ขายปุ๋ย (บาท)

  // ตัวแปรรอรับข้อมูลจากตัวแปรที่รับข้อมูลจาก TextField
  String _inc1Year = '';
  String _inc1Month = '';
  String _inc1TrashSource = '';
  String _inc1TrashSourceName = '';
  String _inc1Type = '';
  String _inc1IncKilo = '';
  String _inc1Compost = '';
  String _inc1CompostKilo = '';
  String _inc1CompostSaleIncome = '';

  // ตัวแปรที่ใช้กับ DropdownButton
  // ปี
  String selectedInc1Year = 'Year 1';
  List<String> dropdownInc1Years = ['Year 2', 'Year 3'];

  // เดือน
  String selectedInc1Month = 'Month 1';
  List<String> dropdownInc1Months = ['Month 2', 'Month 3'];

  // แหล่งที่มาขยะ
  String selectedInc1TrashSource = 'TrashSource 1';
  List<String> dropdownInc1TrashSources = ['TrashSource 2', 'TrashSource 3'];

  // ประเภทขยะอินทร๊ย์
  String selectedInc1Type = 'Type 1';
  List<String> dropdownInc1Types = ['Type 2', 'Type 3'];

  // ปุ๋ย
  String selectedInc1compost = 'compost 1';
  List<String> dropdownInc1composts = ['compost 2', 'compost 3'];

  // ปริมาณปุ๋ย
  String selectedInc1CompostKilo = 'CompostKilo 1';
  List<String> dropdownInc1CompostKilos = ['CompostKilo 2', 'CompostKilo 3'];

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50), // ช่องว่าง

                // ส่วนหัว
                /// โลโก้กับชื่อแอพ
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

                /// กล่องชื่อหน้าและโลโก้
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 140, 164, 59),
                  ),
                  child: Row(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, 0),
                        child: Transform.scale(
                          scale: 1.2,
                          child: Image.asset(
                            'assets/in1.png',
                            width: 75,
                          ),
                        ),
                      ),
                      const Text(
                        'ปุ๋ยหมักมูลไส้เดือน',
                        style: TextStyle(fontFamily: 'PSL114', fontSize: 45),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 10), // ช่องว่าง

                // ส่วนรายละเอียด
                Container(
                  width: 400,
                  child: Column(
                    children: [
                      // ปี เดือน
                      Row(
                        children: [
                          // ปี
                          Container(
                            width: 128,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 10,
                            height: 10,
                          ),

                          // เดือน
                          Container(
                            width: 188,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // แหล่งที่มาขยะ
                      Row(
                        children: [
                          // ไอคอนรูปบ้าน
                          Container(
                            width: 64,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 10,
                            height: 40,
                          ),

                          // แหล่งที่มาขยะ
                          Container(
                            width: 255,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // ชื่อแหล่งที่มาขยะ
                      Row(
                        children: [
                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 74,
                            height: 40,
                          ),

                          // ชื่อแหล่งที่มาขยะ
                          Container(
                            width: 255,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // ประเภทขยะอินทรีย์
                      Row(
                        children: [
                          // ไอคอนเศษอาหาร
                          Container(
                            width: 64,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 10,
                            height: 40,
                          ),

                          // ประเภทขยะอินทรีย์
                          Container(
                            width: 255,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // ปริมาณขยะอินทรีย์ (กก.)
                      Row(
                        children: [
                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 74,
                            height: 40,
                          ),

                          //  ปริมาณขยะอินทรีย์ (กก.)
                          Container(
                            width: 255,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // ปุ๋ยและปริมาณปุ๋ย (กก.)
                      Row(
                        children: [
                          // ไอคอนกระสอบปุ๋ย
                          Container(
                            width: 64,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 10,
                            height: 10,
                          ),

                          // ปุ๋ย
                          Container(
                            width: 98,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 10,
                            height: 40,
                          ),

                          // ปริมาณปุ๋ย (กก.)
                          Container(
                            width: 148,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // รายได้ขายปุ๋ย (บาท)
                      Row(
                        children: [
                          // ช่องว่างขั้นในแถวเดียวกัน
                          Container(
                            width: 74,
                            height: 40,
                          ),

                          // รายได้ขายปุ๋ย (บาท)
                          Container(
                            width: 255,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 20), // ระยะห่าง

                      // ปุ่มยกเลิก และ บันทึก
                      Row(
                        children: [
                          // ช่องว่างก่อนหน้าปุ่ม
                          Container(
                            width: 74,
                            height: 40,
                          ),

                          // ปุ่มยกเลิก
                          Container(
                            width: 127,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 48, 39, 20),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ระยะห่างขั้นในบรรทัดเดียวกัน
                          Container(
                            width: 1,
                            height: 1,
                          ),

                          // ปุ่มยกเลิก
                          Container(
                            width: 127,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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

                      const SizedBox(height: 10), // ระยะห่าง

                      // ปุ่มย้อนกลับ
                      Row(
                        children: [
                          // ช่องว่างก่อนหน้าปุ่ม
                          Container(
                            width: 202,
                            height: 40,
                          ),

                          // ปุ่มย้อนกลับ
                          Container(
                            width: 127,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
