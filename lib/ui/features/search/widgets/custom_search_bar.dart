import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onFieldSubmitted;

  const CustomSearchBar({
    super.key,
    required this.controller,
    required this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search, color: Colors.white),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.zero,
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
