import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  bool sec = true;
  bool door = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Dashboard',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 30,
                margin: EdgeInsets.only(right: 250),
                child: Text(
                  'Power Source',
                  style: GoogleFonts.roboto(fontSize: 16),
                )),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 61,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.add),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Inverter', style: GoogleFonts.roboto()),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Electricity',
                              style: GoogleFonts.roboto(color: Colors.orange),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 61,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              child: FAProgressBar(
                                currentValue: 60,
                                size: 9,
                                progressColor: Colors.orange,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("50%")
                          ],
                        ),
                        Text(
                          "Remaining Battery",
                          style: GoogleFonts.roboto(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 30,
                margin: EdgeInsets.only(right: 210),
                child: Text(
                  'Energy Consumption',
                  style: GoogleFonts.roboto(fontSize: 16),
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 117,
                    width: 215,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 23,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(13)),
                                child: Center(
                                  child: Text(
                                    '12.4 V / 23 A',
                                    style: GoogleFonts.roboto(fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                height: 23,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(13)),
                                child: Center(
                                  child: Text(
                                    '12.4 V / 23 A',
                                    style: GoogleFonts.roboto(fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                height: 23,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(13)),
                                child: Center(
                                  child: Text(
                                    '12.4 V / 23 A',
                                    style: GoogleFonts.roboto(fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: CircularPercentIndicator(
                            radius: 35.0,
                            lineWidth: 7.0,
                            percent: 0.5,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: new Text("1200 W"),
                            progressColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 117,
                    width: 124,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('EB Bill',
                            style: GoogleFonts.roboto(fontSize: 15)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('Todays Bill',
                                    style: GoogleFonts.roboto(fontSize: 11)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '19.0',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12, color: Colors.orange),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Total Bill',
                                    style: GoogleFonts.roboto(fontSize: 11)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '19.0',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12, color: Colors.orange),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 237,
                    width: 80,
                    child: LiquidLinearProgressIndicator(
                      value: 0.50, // Defaults to 0.5.
                      valueColor: const AlwaysStoppedAnimation(Color(
                          0xFF7FD2FF)), // Defaults to the current Theme's accentColor.
                      backgroundColor: const Color(
                          0xFFE0E0E0), // Defaults to the current Theme's backgroundColor.
                      borderColor: const Color(0xFFE0E0E0),
                      borderWidth: 0.1,
                      borderRadius: 16.0,
                      direction: Axis
                          .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                      center: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Water Level",
                              style: GoogleFonts.roboto(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "50%",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.orangeAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 110,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Door control'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonBar(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          print('open');
                                        },
                                        child: const Text(
                                          'Open',style: TextStyle(
                                          color: Colors.orangeAccent
                                        ),
                                        ),),
                                    TextButton(
                                        onPressed: () {

                                        },
                                        child: const Text(
                                          'close',style: TextStyle(
                                          color: Colors.black38
                                        ),
                                          selectionColor: Colors.orange,
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          
                                        },
                                        child: const Text(
                                          'stop',style: TextStyle(
                                            color: Colors.black38
                                        ),
                                          selectionColor: Colors.orange,
                                        )),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 110,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Table control'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                ButtonBar(
                                  children: [
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          'Up',style: TextStyle(
                                            color: Colors.black38
                                        ),
                                          selectionColor: Colors.orange,
                                        )),
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          'Down',
                                          selectionColor: Colors.orange,
                                        )),
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          'Pause',
                                          selectionColor: Colors.orange,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 61,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '14',
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.orangeAccent),
                            ),
                            Text(
                              'Running',
                              style: GoogleFonts.roboto(fontSize: 8),
                            ),
                            Text(
                              'Devices',
                              style: GoogleFonts.roboto(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("security pressed");

                      setState(() {
                        sec = !sec;
                      });
                    },
                    child: Stack(
                      children: [
                        sec == false
                            ? Container(
                                height: 61,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.lock_outline,
                                            color: Colors.white),
                                        Text(
                                          'Security',
                                          style: GoogleFonts.roboto(
                                              fontSize: 8, color: Colors.white),
                                        ),
                                        Text(
                                          'System',
                                          style: GoogleFonts.roboto(
                                              fontSize: 8, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                height: 61,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.lock_outline,
                                            color: Colors.black),
                                        Text(
                                          'Security',
                                          style: GoogleFonts.roboto(
                                              fontSize: 8, color: Colors.black),
                                        ),
                                        Text(
                                          'System',
                                          style: GoogleFonts.roboto(
                                              fontSize: 8, color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
