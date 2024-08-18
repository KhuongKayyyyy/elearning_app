import 'package:elearning_app/Models/category.dart';
import 'package:elearning_app/Models/comment.dart';
import 'package:elearning_app/Models/course.dart';
import 'package:elearning_app/Models/user.dart';
import 'package:flutter/material.dart';
class FakeData {
  static User user = User(
    name: "Nguyen Dat Khuong",
    password: "1123",
    email: "zzkhngzz@gmail.com",
    avatarURL: "https://i.pinimg.com/originals/49/3f/a0/493fa0f13970ab3ef29375669f670451.jpg",
  );
  static Category technology = Category(name: "Technology", categoryIcon: Icons.code);
  static Category science = Category(name: "science", categoryIcon: Icons.science_outlined);
  static Category graphic = Category(name: "Graphic", categoryIcon: Icons.draw_outlined);
  static Category math = Category(name: "Graphic", categoryIcon: Icons.calculate_outlined);
  static Category language= Category(name: "Graphic", categoryIcon: Icons.language);

  static List<Category> categoryList = [technology, science, graphic, math, language];



  static Comment comment1 = Comment(user: user, commentContent: "This course is so great", starRate: 4);
  static Comment comment2 = Comment(user: user, commentContent: "Hope they can do better next time", starRate: 3);
  static Comment comment3 = Comment(user: user, commentContent: "I really really hate the way the instructor organize this course", starRate: 1);
  static Comment comment4 = Comment(user: user, commentContent: "Oh my god I love these lessons, appreciate the enthusiasm of the teachers", starRate: 5);

  static List<Comment> commentList = [comment1, comment2, comment3, comment4];
  static Course course1 = Course(
    name: 'UI UX Design Fundamental',
    imgUrl: 'https://img.freepik.com/premium-vector/digital-marketing-illustration-pink-background_145666-1333.jpg',
    hour: 10,
    overview: 'An introduction to UI UX Design Fundamental',
    price: 50,
    articleNum: 10,
    videoNum: 14,
    learnedLesson: 5,
    commentList: commentList,
      isHot: true
  );


  static Course course2 = Course(
      name: 'UI UX Design Fundamental',
      imgUrl: 'https://img.freepik.com/premium-vector/digital-marketing-illustration-pink-background_145666-1333.jpg',
      hour: 10,
      overview: 'An introduction to UI UX Design Fundamental',
      price: 50,
      articleNum: 8,
      videoNum: 14,
      learnedLesson: 5,
      commentList: commentList,
      isHot: false
  );

  static List<Course> courseList = [course1, course2, course1, course2];

  static List<Course> getHotCourses() {
    return courseList.where((course) => course.isHot).toList();
  }

  static List<Course> getSuggestedCourses() {
    return courseList.where((course) => !course.isHot).toList();
  }
}