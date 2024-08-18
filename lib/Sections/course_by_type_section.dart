import 'package:elearning_app/Components/course_item.dart';
import 'package:elearning_app/Data/fake_data.dart';
import 'package:elearning_app/Models/course.dart';
import 'package:elearning_app/Utils/app_theme.dart';
import 'package:flutter/material.dart';
class CourseByTypeSection extends StatelessWidget{
  String courseListType;
  List<Course> courseList;
  CourseByTypeSection({super.key, required this.courseListType, required this.courseList});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              courseListType,
              style:const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
            const Spacer(),
            TextButton(
                onPressed: (){
                  print("Suggested courses section pressed");
                },
                child: Text(
                  "Show all",
                  style: TextStyle(
                    color: AppTheme.inkGreyDark,
                  ),
                ),)
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: courseList.length,
            itemBuilder: (context, index){
              Course course = courseList.elementAt(index);
              return Padding(
                padding:const EdgeInsets.only(right: 20),
                child: CourseItem(course: course,),
              );
            },
          ),
        )
      ],
    );
  }
}