import 'package:elearning_app/Utils/app_theme.dart';
import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  @override
  _SearchBarCustomState createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]!), // Border color
        borderRadius: BorderRadius.circular(50), // Border radius
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
            color: AppTheme.inkGrey,
            padding: EdgeInsets.zero,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search course',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: AppTheme.inkGrey,
                )
              ),
            ),
          ),

        ],
      ),
    );
  }
}
