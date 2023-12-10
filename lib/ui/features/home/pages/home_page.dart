import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/ui/features/home/views/home_view.dart';
import 'package:flutter_instagram_clone/ui/features/profile/pages/profile_page.dart';
import 'package:flutter_instagram_clone/ui/features/reels/pages/reels_page.dart';
import 'package:flutter_instagram_clone/ui/features/search/pages/search_page.dart';
import 'package:flutter_instagram_clone/ui/features/shop/pages/shop_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onTap(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  final List _pages = const <Widget>[
    HomeView(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
