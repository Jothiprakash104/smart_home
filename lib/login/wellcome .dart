import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/Hue%20demo.dart';
import 'package:smart_home/login/Login%20page.dart';
import 'package:smart_home/login/Signin.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "Assets/images/1.png",
          fit: BoxFit.fitWidth,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to the Future",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
              Row(
                children: const [
                  Text(
                    "Smart Home",
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                  Text(
                    " with",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
              const Text(
                "a Touch of Class",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 200, top: 600),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Get started',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Image.asset(
                  'Assets/images/2.png',
                  scale: 1,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Hue(),
                ));
          },
          child: Container(
            margin: EdgeInsets.only(top: 780, left: 270),
            child: Text(
              "Hue Demo",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
