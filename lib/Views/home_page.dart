import 'package:cached_network_image/cached_network_image.dart';
import 'package:elearning_app/Components/custom_app_bar.dart';
import 'package:elearning_app/Components/custom_bottom_navigation_bar.dart';
import 'package:elearning_app/Components/search_bar_custom.dart';
import 'package:elearning_app/Data/fake_data.dart';
import 'package:elearning_app/Models/course.dart';
import 'package:elearning_app/Sections/category_section.dart';
import 'package:elearning_app/Sections/continue_learning_section.dart';
import 'package:elearning_app/Sections/course_by_type_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  List<Course> suggestCoursesList = FakeData.getSuggestedCourses();
  List<Course> hotCoursesList = FakeData.getHotCourses();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(appBartTitle: FakeData.user.lastName,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            //heading section
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What is New to Learn!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  SearchBarCustom()
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const CategorySection(),
                  const SizedBox(height: 30,),

                  ContinueLearningSection(),
                  const SizedBox(height: 30,),

                  CourseByTypeSection(courseList: suggestCoursesList,courseListType: "Suggested For You",),
                  const SizedBox(height: 30,),

                  CourseByTypeSection(courseList: hotCoursesList,courseListType: "Best Seller",),
                  const SizedBox(height: 100,),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0,),
    );
  }
}