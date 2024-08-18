import 'package:cached_network_image/cached_network_image.dart';
import 'package:elearning_app/Models/course.dart';
import 'package:elearning_app/Utils/app_theme.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.75;

    return Container(
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 2,
          color: AppTheme.inkGrey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 150,
                  width: containerWidth,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: CachedNetworkImage(
                      imageUrl: course.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (course.isHot)
                  Positioned(
                    top: 10,
                    left: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "Best Seller",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  bottom: 10,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      child: Text(
                        "\$${course.price}",
                        style: TextStyle(
                          color: AppTheme.inkGreyDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  course.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 2,
                      color: AppTheme.inkGreyLight,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Text(
                        "${course.averageRating}",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppTheme.inkGreyDark,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.play_arrow, color: Colors.black),
                Text("${course.articleNum} lessons"),
                const SizedBox(width: 70),
                const Icon(Icons.access_time, color: Colors.black),
                Text(" ${course.videoNum} lessons"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
