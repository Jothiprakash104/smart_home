import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:smart_home/login/Devices.dart';
import 'package:smart_home/login/Rooms.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin: EdgeInsets.only(top: 60,left: 30),child: Text('Welcome Home',style: GoogleFonts.poppins(
                    fontSize: 20,fontWeight: FontWeight.bold
                ),)),
                Container(margin: EdgeInsets.only(top: 2,left: 30),child: Text('Ganesh',style: GoogleFonts.poppins(
                    fontSize: 18
                ),)),
                Container(margin: EdgeInsets.only(top: 15,left: 30),
                  child: SlidingSwitch(
                    value: isSelected,
                    width: 350,
                    onChanged: (bool value) {
                      print("switch pressed");
                      print(value);

                    },
                    height : 50,
                    animationDuration :  const Duration(milliseconds: 30),
                    onTap:(){
                      setState(() {
                        isSelected =! isSelected;
                        // print(isSelected);

                      });
                    },
                    onDoubleTap:(){},
                    onSwipe:(){},
                    textOff : "Rooms",
                    textOn : "Devices",
                    contentSize: 14,
                    colorOn : Colors.white,
                    colorOff : Colors.white,
                    background : const Color(0xffe4e5eb),
                    buttonColor : const Color(0xffFF9700),
                    inactiveColor : const Color(0xff636f7b),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

           Expanded(
            child: isSelected ?  Devices(): Rooms() ,
            // child: Devices(),
          ),
        ],
      ),
    );
  }
}
