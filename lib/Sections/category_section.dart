import 'package:elearning_app/Components/category_item.dart';
import 'package:elearning_app/Data/fake_data.dart';
import 'package:elearning_app/Models/category.dart';
import 'package:flutter/material.dart';
class CategorySection extends StatelessWidget{
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: FakeData.categoryList.length,
        itemBuilder: (context, index){
          Category category = FakeData.categoryList.elementAt(index);
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CategoryItem(category: category,),
          );
        },
      ),
    );
  }
}