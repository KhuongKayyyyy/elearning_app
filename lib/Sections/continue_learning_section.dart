import 'package:elearning_app/Components/countinue_learning_course_item.dart';
import 'package:elearning_app/Data/fake_data.dart';
import 'package:elearning_app/Models/course.dart';
import 'package:flutter/material.dart';
class ContinueLearningSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Continue to learn!",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: FakeData.courseList.length,
            itemBuilder: (context, index){
              Course course = FakeData.courseList.elementAt(index);
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CountinueLearningCourseItem(course: course,),
              );
            },
          ),
        )
      ],
    );
  }
}