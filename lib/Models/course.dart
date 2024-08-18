import 'package:elearning_app/Models/comment.dart';

class Course {
  static int _idCounter = 0;
  final int id;
  final String name;
  final String imgUrl;
  final int hour;
  final String overview;
  final int price;
  final bool isHot;

  final int articleNum;
  final int videoNum;
  final int learnedLesson;

  final List<Comment> commentList;

  Course({
    required this.name,
    required this.imgUrl,
    required this.hour,
    required this.overview,
    required this.price,
    required this.articleNum,
    required this.videoNum,
    required this.learnedLesson,
    required this.commentList,
    required this.isHot,
  }) : id = _idCounter++;

  int get progress => ((learnedLesson / articleNum) * 100).toInt();

  double get averageRating {
    if (commentList.isEmpty) return 0.0;
    int totalRating = commentList.fold(0, (sum, comment) => sum + comment.starRate);
    return totalRating / commentList.length;
  }

  @override
  String toString() {
    return 'Course{id: $id, name: $name, imgUrl: $imgUrl, hour: $hour, overview: $overview, price: $price}';
  }
}
