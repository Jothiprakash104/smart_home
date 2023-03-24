import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/Homepage.dart';
import 'package:smart_home/login/Dashbord.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> _items = [
    bottom(),
    Dashbord(),
    const Text('School'),
    const Text('School1'),
  ];

  int cIndex = 0;
  final iconLinearGradiant = List<Color>.from([
    const Color(0xFFFFBC8A),
    const Color(0xFFFF9900),

  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(child: _items[cIndex])),
      bottomNavigationBar: SweetNavBar(
      // paddingGradientColor: iconLinearGradiant,
      currentIndex: cIndex,
      items: [
        SweetNavBarItem(
            sweetActive: const Icon(Icons.home),
            sweetIcon: const Icon(
              Icons.home_outlined,
            ),
            sweetLabel: 'Home',
            iconColors: iconLinearGradiant,
            ),
        SweetNavBarItem(
          sweetActive: const Icon(Icons.dashboard),
          sweetIcon: const Icon(
            Icons.dashboard_outlined,
          ),
          sweetLabel: 'Dashbord',
          iconColors: iconLinearGradiant,
        ),
        SweetNavBarItem(
          sweetActive: const Icon(Icons.access_time_filled_sharp),
          sweetIcon: const Icon(
            Icons.access_time,
          ),
          sweetLabel: 'routine',
          iconColors: iconLinearGradiant,
        ),
        SweetNavBarItem(
          sweetActive: const Icon(Icons.settings_suggest),
          sweetIcon: const Icon(
            Icons.settings_suggest_outlined,
          ),
          sweetLabel: 'Home',
          iconColors: iconLinearGradiant,
        ),

      ],
      onTap: (index) {
        setState(() {
          cIndex = index;
        });
      },
    ),


    );
  }
}
