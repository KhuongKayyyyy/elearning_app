import 'package:elearning_app/Utils/app_theme.dart';
import 'package:elearning_app/Views/course_page.dart';
import 'package:elearning_app/Views/home_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int currentIndex;
  CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<Widget> pages = [
    HomePage(),
    CoursePage(),
    CoursePage(),
    CoursePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(bottom: 8),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 20)
            )
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          items: [
            _buildBottomNavigationBarItem(Icons.home_outlined, 0),
            _buildBottomNavigationBarItem(Icons.library_books, 1),
            _buildBottomNavigationBarItem(Icons.search, 2),
            _buildBottomNavigationBarItem(Icons.account_circle_outlined, 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: widget.currentIndex == index
          ? Container(
        padding: const EdgeInsets.all(12), // Adjust the padding if needed
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,  // Circle background color
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white),
      )
          : Icon(icon),
      label: "",
    );
  }
}