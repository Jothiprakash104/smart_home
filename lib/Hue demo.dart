import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hue extends StatefulWidget {
  const Hue({Key? key}) : super(key: key);

  @override
  State<Hue> createState() => _HueState();
}

class _HueState extends State<Hue> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            status == false ? Image.asset("Assets/images/13.png")
           : Image.asset("Assets/images/15.png"),
            status2 != false ?  Stack(
              children: [

                Container(
                  height: 325,
                  width: 800,
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    "Assets/images/23.gif",
                    fit: BoxFit.fitWidth,

                    color: Colors.white.withOpacity(0.5),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 60, left: 160),
                  height: 200,
                  width: 320,
                  child: Image.asset(
                    "Assets/images/22.gif",
                    color: Colors.white.withOpacity(0.1),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 100.7, left: 216),
                    child: Image.asset(
                      "Assets/images/20.gif",
                      scale: 2.7,
                    )),
              ],
            ) : Container(
              height: 200,
              width: 300,
            ),

            Image.asset("Assets/images/14.png"),
            status1 == false ?  Container(
                  height: 200,
                  width: 300,
                  ): Container(
                margin: const EdgeInsets.only(top: 100.7, left: 216),
                child: Image.asset(
                  "Assets/images/20.gif",
                  scale: 2.7,
                )),

            Container(
              margin: const EdgeInsets.only(left: 650),
              height: double.maxFinite,
              width: 210,
              decoration: const BoxDecoration(
                color: Color(0xFF101010),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 10),
                    child: Text(
                      "Sync lights to tv , game or music",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 10),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    height: 66,
                    width: 163,
                    decoration: BoxDecoration(
                        color: const Color(0xFF272727),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset("Assets/images/16.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "scenery",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Day / Night",
                              style: GoogleFonts.poppins(
                                fontSize: 7,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: status,
                          onChanged: (value) {
                            print("button pressed");
                            setState(() {
                              status = value;
                            });
                          },

                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    height: 66,
                    width: 163,
                    decoration: BoxDecoration(
                        color: const Color(0xFF272727),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset("Assets/images/17.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tv",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Off",
                              style: GoogleFonts.poppins(
                                fontSize: 7,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Switch(
                          value: status1,
                          onChanged: (value) {
                            setState(() {
                              status1 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    height: 66,
                    width: 163,
                    decoration: BoxDecoration(
                        color: const Color(0xFF272727),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset("Assets/images/18.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hue",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "off",
                              style: GoogleFonts.poppins(
                                fontSize: 7,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Switch(
                          value: status2,
                          onChanged: (value) {
                            setState(() {
                              status2 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    height: 66,
                    width: 163,
                    decoration: BoxDecoration(
                        color: const Color(0xFF272727),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset("Assets/images/19.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Music",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Off",
                              style: GoogleFonts.poppins(
                                fontSize: 7,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Switch(
                          value: false,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
