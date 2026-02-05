import 'package:flutter/material.dart';
import 'package:testing_modul/home.dart';
import 'profile.dart' show ProfilePage;

class Root extends StatefulWidget {
  final String username;
  const Root({Key? key, required this.username}) : super(key: key);
  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomePage(username: widget.username),
      ProfilePage(username: widget.username),
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
