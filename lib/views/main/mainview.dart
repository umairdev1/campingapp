import 'package:campingapp/utils/color.dart';
import 'package:flutter/material.dart';

import '../home/homeview.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text(
      'Direction',
      style: optionStyle,
    ),
    Text(
      'Favorite',
      style: optionStyle,
    ),
    Text(
      'Alerts',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: ksecondaryClr),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: BottomNavigationBar(
              backgroundColor: ksecondaryClr,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.send_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_rounded),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: kwhiteClr,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
