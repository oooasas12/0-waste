import 'package:flutter/material.dart';

class MyTFF extends StatefulWidget {
  const MyTFF({
    super.key,
    this.hintTextInput = 'hintText?',
  });

  final String hintTextInput;

  get thisController => null;

  @override
  State<MyTFF> createState() => _MyTFFState();
}

class _MyTFFState extends State<MyTFF> {

  TextEditingController thisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: thisController,
      cursorColor: const Color.fromARGB(255, 140, 164, 59),
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontFamily: 'PSL114',
          fontSize: 18,
        ),
        isDense: true,
        contentPadding: const EdgeInsets.only(
          left: 20,
          top: 8,
          bottom: 8,
        ),
        hintText: widget.hintTextInput,
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
    );
  }
}

class MyTFFforVP extends StatefulWidget {
  MyTFFforVP({
    super.key,
    required this.hintTextInputforVP,
    this.obscureTextforVP = true,
  });
  final String hintTextInputforVP;
  bool obscureTextforVP;

  @override
  State<MyTFFforVP> createState() => _MyTFFforVPState();
}

class _MyTFFforVPState extends State<MyTFFforVP> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureTextforVP,
      cursorColor: const Color.fromARGB(255, 140, 164, 59),
      decoration: InputDecoration(
        // errorStyle: const TextStyle(
        //   fontFamily: 'PSL114',
        //   fontSize: 18,
        // ),
        isDense: true,
        contentPadding: const EdgeInsets.only(
          left: 20,
          top: 8,
          bottom: 8,
        ),
        hintText: widget.hintTextInputforVP,
        hintStyle: const TextStyle(
          fontFamily: 'PSL114',
          fontSize: 19,
          color: Colors.grey,
        ),
        suffixIcon: GestureDetector(
          // ไอคอนซ่อนและเปิดเผยรหัสผ่าน
          onTap: () {
            setState(() {
              widget.obscureTextforVP = !widget.obscureTextforVP;
            });
          },
          child: Icon(
            widget.obscureTextforVP ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
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
    );
  }
}
