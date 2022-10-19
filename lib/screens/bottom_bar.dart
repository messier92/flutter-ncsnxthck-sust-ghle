import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/authenticate/authenticate.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/fridge_page.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/home.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/wrapper.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // home or login screen
    FridgePage(),
    Home(),
    Text("Placeholder Info Page"),
    Authenticate(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType
            .fixed, // to make it move, change 'fixed' to 'shifting'
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_favorites_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_favorites_filled),
              label: "Vote"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_info_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_info_filled),
              label: "Information"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile")
        ],
      ),
    );
  }
}
