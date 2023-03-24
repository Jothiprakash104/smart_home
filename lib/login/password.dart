import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 130,
        ),
        Container(margin: EdgeInsets.only(left: 130),
          child: Image.asset('Assets/images/7.png'),
        ),
        Container(margin: const EdgeInsets.only(left: 40,top: 70),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text('Forgot ',style: GoogleFonts.poppins(
                  fontSize: 25
              ),),
              const SizedBox(
                height: 5,
              ),
              Text('Password ?',style: GoogleFonts.poppins(fontSize: 25),),
              Text('Please enter your mobile no or email id below',style: GoogleFonts.poppins(
                  fontSize: 15
              ))
            ],
          ),
        ),
        const SizedBox(height: 30,),
        Container(alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        const Icon(
                            Icons.alternate_email
                        ),
                        const SizedBox(width: 10,),
                        Text('Email id / Mobile number',style: GoogleFonts.poppins(fontSize: 15
                        ),),
                        SizedBox(
                          width: 50,
                        ),
                        // Icon(Icons.remove_red_eye_rounded)
                      ],
                    ),


                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                  print('Submit');
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('Submit',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),

            ],
          ),
        ),
      ],
    ),
    );
  }
}
