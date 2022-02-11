import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final IconData? searchIcon;

  SearchField({@required this.searchIcon,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 12.0),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(searchIcon),
            hintText: "Search you're looking for",
            hintStyle:
            TextStyle(color: Colors.grey, fontSize: 15),),
      ),
    );
  }
}