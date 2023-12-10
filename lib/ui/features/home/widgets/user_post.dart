import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String displayName;
  const UserPost({
    super.key,
    required this.displayName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                displayName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.favorite_outline, size: 30),
              SizedBox(width: 15),
              Icon(Icons.chat_bubble_outline, size: 30),
              SizedBox(width: 15),
              Icon(Icons.share_outlined, size: 30),
              Spacer(),
              Icon(Icons.bookmark_outline, size: 30),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 12),
          child: Row(
            children: [
              Text('liked by '),
              Text(
                'random guy ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('and '),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12.0),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: '$displayName ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text:
                      'check this out ... bla bla bla bla bla bla bla.......................',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
