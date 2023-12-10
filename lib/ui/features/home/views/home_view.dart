import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/common/widgets/story_bubble.dart';
import 'package:flutter_instagram_clone/ui/features/home/widgets/user_post.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List people = [
      'Jeremiah',
      'Ololade',
      'Jumoke',
      'Tobiloba',
      'Tominsin',
      'Some guy'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //* Stories
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryBubble(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(displayName: people[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
