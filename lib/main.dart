import 'package:fyp_v1/calculation.dart';
import 'package:flutter/material.dart';
import 'formulaPage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: btmnavbar(),
    );
  }
}


class btmnavbar extends StatefulWidget {
  @override
  State<btmnavbar> createState() => _btmnavbarState();
}

class _btmnavbarState extends State<btmnavbar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    calculation(),
    formulaPage(),

  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Appendix',
          ),

        ],
      ),
    );
  }
}







