import 'package:flutter/material.dart';
import 'package:waste/pages/recyclingpages.dart';
import 'package:waste/pages/wasteherepages.dart';

class mainpages extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}
class _registerState extends State<mainpages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand, // ทำให้ Stack ขยายเต็มพื้นที่หน้าจอ
          children: [
            Image.asset(
              'assets/bg1.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 260,
                    height: 100,
                    //padding: const EdgeInsets.all(9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 120,
                          height: 120,
                        ),
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
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return recyclingpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                              elevation: 0,// กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),// กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFB3C469),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/recycle.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'ขยะ\n',
                                        ),
                                        TextSpan(
                                          text: 'รีไซเคิล', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                    return mainpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/inc.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'ขยะ\n',
                                        ),
                                        TextSpan(
                                          text: 'อินทรีย์', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                    return mainpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/here_pub.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'ขยะ\n',
                                        ),
                                        TextSpan(
                                          text: 'ทั่วไป', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                    return wasteherepages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/here.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'จุด\n',
                                        ),
                                        TextSpan(
                                          text: 'ทิ้งขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                      SizedBox(height: 10),
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
                                    return mainpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEBE5D2), // กำหนดสีพื้นหลังของปุ่ม
                              elevation: 0,// กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:
                            Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/rep1.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/product.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'ผลิต\n',
                                        ),
                                        TextSpan(
                                          text: 'ภัณฑ์', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                    return mainpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),

                            child:Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/game.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                                          text: 'เกมคัด\n',
                                        ),
                                        TextSpan(
                                          text: 'แยกขยะ', // ข้อความบรรทัดใหม่ ซึ่งขนาดจะเปลี่ยนแค่บรรทัดนี้เท่านั้น
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
                                    return mainpages();
                                  }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE3CB8E), // กำหนดสีพื้นหลังของปุ่ม
                              minimumSize: Size(10, 10), // กำหนดขนาดของปุ่ม
                              padding: EdgeInsets.all(0), // กำหนดขอบเขตของปุ่มเป็น 0 เพื่อให้ไม่มีช่องว่าง
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // กำหนดขนาดเป็น ShrinkWrap เพื่อให้ปุ่มไม่มีช่องว่างด้านนอก
                              side: BorderSide.none, // กำหนดไม่มีกรอบสี
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่มเป็นขอบมน
                              ),
                            ),
                            child:Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFE3CB8E),
                                borderRadius: BorderRadius.circular(20.0), // เปลี่ยนเป็นค่าที่ต้องการ
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                                children: [
                                  Image.asset(
                                    'assets/about.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
          ],
        ),
      ),
    );
  }
}
