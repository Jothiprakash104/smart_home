import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 30,top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("Assets/images/8.png"),fit: BoxFit.fill),
                ),
                child:Container(margin: EdgeInsets.only(top: 125,left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Admin room',style: GoogleFonts.poppins(
                        color: Colors.white,fontSize: 15,)
                      ),
                      Text('2 devices Active',style: GoogleFonts.poppins(
                        fontSize: 11,color: Colors.white,
                      ),),
                    ],
                  ),
                )
            ),
            Container(margin: EdgeInsets.only(left: 30,top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("Assets/images/9.png"),fit: BoxFit.fill),
                ),
                child:Container(margin: EdgeInsets.only(top: 125,left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Green room',style: GoogleFonts.poppins(
                        color: Colors.white,fontSize: 15,)
                      ),
                      Text('2 devices Active',style: GoogleFonts.poppins(
                        fontSize: 11,color: Colors.white,
                      ),),
                    ],
                  ),
                )
            ),
            Container(margin: EdgeInsets.only(left: 30,top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("Assets/images/10.png"),fit: BoxFit.fill),
                ),
                child:Container(margin: EdgeInsets.only(top: 125,left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Garage ',style: GoogleFonts.poppins(
                        color: Colors.white,fontSize: 15,)
                      ),
                      Text('2 devices Active',style: GoogleFonts.poppins(
                        fontSize: 11,color: Colors.white,
                      ),),
                    ],
                  ),
                )
            ),
            Container(margin: EdgeInsets.only(left: 30,top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("Assets/images/11.png"),fit: BoxFit.fitWidth),
                ),
                child:Container(margin: EdgeInsets.only(top: 125,left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Masterbed room',style: GoogleFonts.poppins(
                        color: Colors.white,fontSize: 15,)
                      ),
                      Text('2 devices Active',style: GoogleFonts.poppins(
                        fontSize: 11,color: Colors.white,
                      ),),
                    ],
                  ),
                )
            ),
            Container(margin: EdgeInsets.only(left: 30,top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("Assets/images/12.png"),fit: BoxFit.fitWidth),
                ),
                child:Container(margin: EdgeInsets.only(top: 125,left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Kitchen',style: GoogleFonts.poppins(
                        color: Colors.white,fontSize: 15,)
                      ),
                      Text('2 devices Active',style: GoogleFonts.poppins(
                        fontSize: 11,color: Colors.white,
                      ),),
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      ),
    );
  }
}
