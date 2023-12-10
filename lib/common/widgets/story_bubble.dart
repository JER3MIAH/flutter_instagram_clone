import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  final String text;
  const StoryBubble({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 5.0),
          Text(text),
        ],
      ),
    );
  }
}
