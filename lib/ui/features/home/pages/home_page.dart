import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/logic/providers/user_provider.dart';
import 'package:flutter_instagram_clone/ui/features/add_post/pages/add_post_page.dart';
import 'package:flutter_instagram_clone/ui/features/home/pages/feed_view.dart';
import 'package:flutter_instagram_clone/ui/features/profile/pages/profile_page.dart';
import 'package:flutter_instagram_clone/ui/features/reels/pages/reels_page.dart';
import 'package:flutter_instagram_clone/ui/features/search/pages/search_page.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await userProvider.refreshUser();
  }

  int _selectedIndex = 0;

  void _onTap(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  final List _pages = <Widget>[
    const FeedView(),
    const SearchPage(),
    const AddPostPage(),
    const ReelsPage(),
    ProfilePage(uid: FirebaseAuth.instance.currentUser!.uid),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: 'post'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
