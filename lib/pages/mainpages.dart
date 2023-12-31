import 'package:flutter/material.dart';
import 'package:waste/pages/recyclingpages.dart';
import 'package:waste/pages/reportpages.dart';
import 'package:waste/pages/wasteherepages.dart';
import 'package:waste/pages/incpages.dart';

class mainpages extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}
class _registerState extends State<mainpages> {
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
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return recyclingpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                              elevation: 0,// กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              minimumSize: const Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: const EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),// กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:Container(
                              width: 160,
                              height: 80,
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
                                    'assets/recycle.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'ขยะรีไซเคิล',
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
                                    return incpages();
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
                              width: 160,
                              height: 80,
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
                                    'assets/inc.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'ขยะอินทรีย์',
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
                                    return mainpages();
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
                              width: 160,
                              height: 80,
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
                                    'assets/here_pub.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'ขยะทั่วไป',
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
                              width: 160,
                              height: 80,
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
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'จุดทิ้งขยะ',
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
                      const SizedBox(height: 10),
                      Container(
                        width: 10,
                        height: 10,
                  ), //กำหนดช่องว่างระหว่างRow

                      // Row ที่สอง
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return reportpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                              elevation: 0,// กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              minimumSize: const Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: const EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:
                            Container(
                              width: 160,
                              height: 80,
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
                                    'assets/rep1.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 10,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'รายงาน',
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
                                    return mainpages();
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
                            child:Container(
                              width: 160,
                              height: 80,
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
                                    'assets/product.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'ผลิตภัณฑ์',
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
                                    return mainpages();
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

                            child:Container(
                              width: 160,
                              height: 80,
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
                                    'assets/game.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'เกมคัด\n',
                                        ),
                                        TextSpan(
                                          text: 'แยกขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return mainpages();
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
                            child:Container(
                              width: 160,
                              height: 80,
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
                                    'assets/about.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
                                    width: 60,
                                    height: 60,
                                  ),
                                  Container(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style:  TextStyle(
                                        color: Colors.black,
                                        fontFamily:'PSL116',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'เกี่ยวกับ',
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
                ],
              ),
            ),
        ),
      ),
    );
  }
}
