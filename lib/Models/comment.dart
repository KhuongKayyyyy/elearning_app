import 'package:elearning_app/Models/user.dart';

class Comment {
  final User user;
  final String commentContent;
  final int starRate;
  Comment({required this.user, required this.commentContent, required this.starRate});
}