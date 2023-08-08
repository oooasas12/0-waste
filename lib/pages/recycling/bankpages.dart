import 'package:flutter/material.dart';
import 'package:waste/pages/mainpages.dart';
import 'package:waste/pages/recycling/bank/pointspages.dart';
import 'package:waste/pages/wasteherepages.dart';
import 'package:waste/pages/recyclingpages.dart';
import 'package:waste/pages/recycling/bank/homeuserpages.dart';
import 'package:waste/pages/recycling/bank/weightRepages.dart';

class bankpages extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<bankpages> {
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
                const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row แรก
                  Column(
                    children: [
                      Container(
                          width: 220,
                          height: 90,
                          decoration: BoxDecoration(
                            color: const Color(0xFFB3C469),
                            borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                            children: [
                              Image.asset(
                                'assets/re12.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                width: 80,
                                height: 80,
                              ),
                              RichText(
                                text: const TextSpan(
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontFamily:'PSL116',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'ธนาคารขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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

                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return homeuserpages();
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
                          width: 270,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3CB8E),
                            borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                            children: [
                              Image.asset(
                                'assets/re7.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                width: 80,
                                height: 80,
                              ),
                              Container(
                                width: 45,

                              ),
                              RichText(
                                text: const TextSpan(
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontFamily:'PSL116',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'หน้าหลัก', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return weightRepages();
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
                          width: 270,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3CB8E),
                            borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                            children: [
                              Image.asset(
                                'assets/re8.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                width: 80,
                                height: 80,
                              ),
                              Container(
                                width: 6,

                              ),
                              RichText(
                                text: const TextSpan(
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontFamily:'PSL116',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [

                                    TextSpan(
                                      text: 'น้ำหนักขยะรีไซเคิล', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return pointspages();
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
                          width: 270,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3CB8E),
                            borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                            children: [
                              Image.asset(
                                'assets/re5.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                width: 80,
                                height: 80,
                              ),
                              Container(
                                width: 45,

                              ),
                              RichText(
                                text: const TextSpan(
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontFamily:'PSL116',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'POINTS', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const wasteherepages();
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
                          width: 270,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3CB8E),
                            borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                            children: [
                              Image.asset(
                                'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                width: 80,
                                height: 80,
                              ),
                              Container(
                                width: 45,

                              ),
                              RichText(
                                text: const TextSpan(
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontFamily:'PSL116',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'จุดทิ้งขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                    ],
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
                                return recyclingpages();
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
       );
     }
}
