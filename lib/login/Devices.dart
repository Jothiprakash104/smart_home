import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Devices extends StatefulWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(left: 30,right: 30),
                child: AnimSearchBar(
                  width: 400,
                  color: Color(0xFFF3F3F3),
                  textFieldColor:Color(0xFFF3F3F3) ,
                  searchIconColor: Color(0xFFB4B2B2),
                  textFieldIconColor: Color(0xFFB4B2B2),
                  boxShadow: false,
                  rtl: true,
                  helpText: "Search Device",
                  suffixIcon: const Icon(Icons.clear),
                  textController: textController,
                  onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                  }, onSubmitted: (String ) {  },
                ),
              ),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('Assets/images/28.png'),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 1',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.tv),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 2',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.devices),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 3',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.light_mode),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 4',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.lightbulb),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 5',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.devices_other_sharp),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 6',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width:335,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),borderRadius: BorderRadius.circular(13)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.add_a_photo),
                    SizedBox(
                      width: 30,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Device 1',style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                        Text('Device Status : Off',style: GoogleFonts.poppins(
                          fontSize: 9,
                        ),)
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Switch(value: false, onChanged: null)
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
