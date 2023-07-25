import 'package:flutter/material.dart';
import 'package:waste/pages/mainpages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 242, 210, 1),
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
                    offset: Offset(-5, -15),
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
                      Transform.translate(
                        offset: Offset(-38, -15),
                        child: Text(
                          'SRU',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Text(
                        'Zero Waste',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'เข้าสู่ระบบ',
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'รหัสผ่าน',
                  icon: Icon(Icons.vpn_key),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('เข้าสู่ระบบ'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(66, 50, 14, 0.863),
                        minimumSize: Size(100, 50),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return register();
                            }));
                      },
                      child: Text('สร้างบัญชี'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(66, 50, 14, 0.863),
                        minimumSize: Size(100, 50),
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
