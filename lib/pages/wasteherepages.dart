import 'package:flutter/material.dart';
import 'package:waste/pages/mainpages.dart';

class wasteherepages extends StatefulWidget {
  const wasteherepages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<wasteherepages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      SizedBox(height: 10),
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
                                    backgroundColor: Color(
                                        0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                                    elevation:
                                        0, // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                                    minimumSize:
                                        Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: EdgeInsets.all(
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
                                      color: Color(0xFFB3C469),
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
                                          'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                                    'จุดทิ้งขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return mainpages();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: EdgeInsets.all(
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
                                    width: 330,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE3CB8E),
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
                                          'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                                    'ใต้หอพักท่าเพชร', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return mainpages();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: EdgeInsets.all(
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
                                    width: 330,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE3CB8E),
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
                                          'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                                    'ข้างหอพักรัชชประภา', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return mainpages();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: EdgeInsets.all(
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
                                    width: 330,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE3CB8E),
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
                                          'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                                    'ด้านหน้าตึกกองพัฒนานักศึกษา', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return mainpages();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                                    minimumSize:
                                        Size(10, 10), // กำหนดขนาดของปุ่ม
                                    padding: EdgeInsets.all(
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
                                    width: 330,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE3CB8E),
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
                                          'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                                    'อาคารจอดรถสำนักงานอธิการบดี\n(ใต้บรรไดทางขึ้น)', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
                                                style: TextStyle(
                                                  fontSize: 28,
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
                            )
                          ])
                    ]))),
      ),
    );
  }
}
