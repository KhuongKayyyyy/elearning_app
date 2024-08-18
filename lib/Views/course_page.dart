import 'package:elearning_app/Components/custom_app_bar.dart';
import 'package:flutter/material.dart';
class CoursePage extends StatefulWidget{
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBartTitle: "My Courses",),
      body: Center(
        child: Text("asdas"),
      ),
    );
  }
}
