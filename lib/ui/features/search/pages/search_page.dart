import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/common/widgets/grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SearchBar(
            elevation: const MaterialStatePropertyAll(0),
            constraints: const BoxConstraints(minHeight: 40),
            leading: const Icon(Icons.search),
            backgroundColor: MaterialStatePropertyAll(Colors.grey[300]),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            hintText: 'Search',
          ),
        ),
      ),
      body: const CustomGridView(),
    );
  }
}
