import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/login/Bottomnavbar.dart';
import 'package:smart_home/login/password.dart';
import 'Signin.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
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
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset('Assets/images/3.png'),
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
                    child: TextFormField(controller: username,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'user name',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(controller: password,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          label: Text('Password')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Forgot password ?');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Password(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 150, top: 20),
                      child: Text(
                        'Forgot password ?',
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('log in pressed');
                      FirebaseAuth.instance.signInWithEmailAndPassword(email: username.text.trim(), password: password.text.trim())
                      .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Navbar(),
                            ));
                      },)
                      .onError((error, stackTrace) {
                        print("error in login ${error.toString()} ");
                      });
                      password.clear();
                      username.clear();
                     
                    },
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xFF262626),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member   ',
                        style: GoogleFonts.poppins(
                            fontSize: 13, color: Colors.black54),
                      ),
                      GestureDetector(
                          onTap: () {
                            print('create a account');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signin(),
                                ));
                          },
                          child: Text(
                            'Create a account ?',
                            style: GoogleFonts.poppins(),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
