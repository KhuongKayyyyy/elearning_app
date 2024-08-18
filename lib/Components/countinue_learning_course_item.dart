import 'dart:math';

import 'package:elearning_app/Models/course.dart';
import 'package:elearning_app/Utils/app_theme.dart';
import 'package:flutter/material.dart';

class CountinueLearningCourseItem extends StatelessWidget {
  Course course;

  CountinueLearningCourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 20,
            right: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const Spacer(),
              //  course learning progress
              Row(
                children: [
                  Text(
                    "${course.progress} %",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      value: (course.progress) / 100,
                      minHeight: 6,
                      backgroundColor: Colors.grey[200],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  )
                ],
              ),
              const Spacer(),
              //  articles and video number
              Row(
                children: [
                  const Icon(
                    Icons.menu_book_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "${course.articleNum} Articles",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  Text(
                    "${course.videoNum} Videos",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
