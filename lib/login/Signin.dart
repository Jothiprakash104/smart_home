import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/login/Login%20page.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  final TextEditingController name = TextEditingController();
  final  TextEditingController email = TextEditingController();
  final  TextEditingController password = TextEditingController();
  bool passwordVisible = false;

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40, top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello !',
                    style: GoogleFonts.poppins(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Welcome back to smart world',
                      style: GoogleFonts.poppins(fontSize: 18))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: Image.asset('Assets/images/4.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          label: Text('User name')),
                    ),
                  ),
                  SizedBox(
                    width: 300,

                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          label: Text('Email Id')),
                    ),
                  ),
                  SizedBox(
                      width: 300,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: password,
                        obscureText:
                            passwordVisible, //This will obscure text dynamically
                        decoration: InputDecoration(
                          labelText: 'Password', prefixIcon: Icon(Icons.lock),
                          // Here is key idea
                          suffixIcon: IconButton(
                            icon: Icon(
                                // Based on passwordVisible state choose the icon
                                passwordVisible ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black45),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                            },
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('login');
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email.text.trim(),
                          password: password.text.trim())
                      .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => const Login(),));
                      },);
                      email.clear();
                      password.clear();
                      name.clear();

                    },
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xFF262626),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Row(mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text('Not a member   ',style: GoogleFonts.poppins(
                  //         fontSize: 13,color: Colors.black54
                  //     ),),
                  //     Text('Create a account ?',style: GoogleFonts.poppins(),)
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
