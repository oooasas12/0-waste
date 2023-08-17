import 'package:flutter/material.dart';

class Vermicompost extends StatefulWidget {
  const Vermicompost({super.key});

  @override
  State<Vermicompost> createState() => _VermicompostState();
}

class _VermicompostState extends State<Vermicompost> {
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
                            width: 100,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
