import 'package:flutter/material.dart';
import 'package:waste/pages/mainpages.dart';

import 'package:waste/pages/organicpages/1_vermicompost.dart';
import 'package:waste/pages/organicpages/2_non-turnover_compost.dart';
import 'package:waste/pages/organicpages/3_biogas.dart';
import 'package:waste/pages/organicpages/4_organic_management_station.dart';

class incpages extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<incpages> {
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.translate(
                            offset: const Offset(-5, -2),
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
                                    fontFamily: 'PSL116',
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
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Row แรก
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return mainpages();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                                    elevation:
                                        0, // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    minimumSize:
                                        const Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: const EdgeInsets.all(
                                        0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                                    side: BorderSide.none, // กำหนดไม่มีกรอบสี
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                                    ),
                                  ),
                                  child: Container(
                                    width: 220,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB3C469),
                                      borderRadius: BorderRadius.circular(
                                          20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                      children: [
                                        Image.asset(
                                          'assets/inc.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                          width: 80,
                                          height: 80,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'PSL116',
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'ขยะอินทรีย์', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                ),

                                //ช้อยส์1
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return const Vermicompost();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        const Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: const EdgeInsets.all(
                                        0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                                    side: BorderSide.none, // กำหนดไม่มีกรอบสี
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3CB8E),
                                      borderRadius: BorderRadius.circular(
                                          20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                      children: [
                                        Image.asset(
                                          'assets/in1.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                          width: 60,
                                          height: 80,
                                        ),
                                        Container(
                                          width: 1,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'PSL116',
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'ปุ๋ยหมักมูลไส้เดือน', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                                style: TextStyle(
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //ช้อยส์2
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return const NonTurnoverCompost();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        const Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: const EdgeInsets.all(
                                        0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                                    side: BorderSide.none, // กำหนดไม่มีกรอบสี
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3CB8E),
                                      borderRadius: BorderRadius.circular(
                                          20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                      children: [
                                        Image.asset(
                                          'assets/in2.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                          width: 60,
                                          height: 80,
                                        ),
                                        Container(
                                          width: 1,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'PSL116',
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'ปุ๋ยหมักแบบไม่พลิกกับกอง', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                                style: TextStyle(
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //ช้อยส์3
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return const Biogas();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        const Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: const EdgeInsets.all(
                                        0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                                    side: BorderSide.none, // กำหนดไม่มีกรอบสี
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3CB8E),
                                      borderRadius: BorderRadius.circular(
                                          20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                      children: [
                                        Image.asset(
                                          'assets/in3.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                          width: 60,
                                          height: 80,
                                        ),
                                        Container(
                                          width: 1,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'PSL116',
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'ก๊าซชีวภาพ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                                style: TextStyle(
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //ช้อยส์4
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return const OrganicManagementStation();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        const Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: const EdgeInsets.all(
                                        0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    tapTargetSize: MaterialTapTargetSize
                                        .shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                                    side: BorderSide.none, // กำหนดไม่มีกรอบสี
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3CB8E),
                                      borderRadius: BorderRadius.circular(
                                          20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                      children: [
                                        Image.asset(
                                          'assets/in4.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                          width: 60,
                                          height: 80,
                                        ),
                                        Container(
                                          width: 1,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'PSL116',
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'สถานีจัดการขยะอินทรีย์', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                                style: TextStyle(
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 10), // ระยะห่าง

                                // ป่มย้อนกลับ
                                Padding(
                                  padding: EdgeInsets.only(left: 220),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
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
                                      'ย้อนกลับ',
                                      style: TextStyle(
                                        fontFamily: 'PSL114',
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ])
                    ]))),
      ),
    );
  }
}
