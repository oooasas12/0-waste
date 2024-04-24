import 'package:flutter/material.dart';
import 'package:waste/pages/recycling/bankpages.dart';

class weightRepages extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}
class _registerState extends State<weightRepages> {
  @override
  Widget build(BuildContext context) {

    var number1 = 1;
    var number2 = 2;
    var number3 = 3;
    var number4 = 4;
    var number5 = 5;
    var number6 = 6;
    var number7 = 7;
    var number8 = 8;
    var number9 = 9;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
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

              Column(
                children: [
                  Container(
                    width: 290,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดให้รูปภาพอยู่ทางซ้ายและข้อความอยู่ทางขวาของ Container
                      children: [
                        Image.asset(
                          'assets/re8.png', // แทนที่ assets/icon.png ด้วยพาธของไอคอนที่คุณต้องการ
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
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 210,
                    height: 300,

                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                          'ขวดพลาสติก\n'
                          'ขวดนม ขวดแชมพู/โลชั่น\n'
                          'กล่องกระดาษลัง\n'
                          'กระดาษเอกสารขาว-ดำ\n'
                          'กระดาษเอกสารสี\n'
                          'กระป๋องอะลูมิเนียม\n'
                          'ขวดแก้ว/ภาชนะแก้ว\n'
                          'อื่นๆ'

                    ),
                  ),

                  Container(
                    width: 30,
                    height: 300,
                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        ':\n'
                            ':\n'
                            ':\n'
                            ':\n'
                            ':\n'
                            ':\n'
                            ':\n'
                            ':'
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 306,
                    child: Column(
                      children: [
                        Text(style: const TextStyle(
                              color: Colors.black,
                              fontFamily:'PSL116',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),'$number1'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number2'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number3'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number4'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number5'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number6'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number7'),

                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number8'),

                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 300,
                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        'กก.\n'
                            'กก.\n'
                            'กก.\n'
                            'กก.\n'
                            'กก.\n'
                            'กก.\n'
                            'กก.\n'
                            'กก.'
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,  // สีขอบด้านบน
                      width: 2.0,           // ความหนาของเส้นขอบ
                    ),
                  ),
                ),
                child: Row(
                children: [
                  Container(

                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        'รวมน้ำหนักทั้งหมด         '
                    ),
                  ),
                  Container(
                    width: 39,
                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        ':'
                    ),
                  ),
                  Container(
                    width: 43,
                    child: Column(
                      children: [
                        Text(style: const TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),'$number9'),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,

                    child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily:'PSL116',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                            'กก.'
                    ),
                  ),
                ],
              ),
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
                              return bankpages();
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
    );
  }
}
