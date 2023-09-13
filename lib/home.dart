import 'package:cours_flutter/home_tabs/calendar_tab.dart';
import 'package:cours_flutter/home_tabs/circle_tab.dart';
import 'package:cours_flutter/home_tabs/search_tab.dart';
import 'package:cours_flutter/home_tabs/triangle_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  Color _bgColor = Colors.blue;
  Color _squareColor = Colors.red;

  List<Widget> _tabs = [];

  @override
  void initState() {
    super.initState();
    _tabs = [
      TriangleTab(_squareColor),
      // CircleTab(
      //   callback: changeBackgroundColor,
      // ),
      // const SquareTab(),
      const CalendarTab(),
      const SearchTab(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        leading: const Icon(Icons.airplanemode_active),
        title: const Text("Coucou"),
      ),
      body: _tabs[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _onButtonTap,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onIndexTap,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.square),
            label: "Carré",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendrier",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Recherche",
          ),
        ],
      ),
    );
  }

  void _onButtonTap() {
    print("Coucou");
    setState(() {
      _squareColor = _squareColor == Colors.red ? Colors.black : Colors.red;
    });
  }

  void _onIndexTap(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  void changeBackgroundColor() {
    setState(() {
      _bgColor = _bgColor == Colors.blue ? Colors.black : Colors.blue;
    });
  }
}
