import 'package:elearning_app/Models/category.dart';
import 'package:elearning_app/Utils/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppTheme.inkGrey,
            width: 1
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:  Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppTheme.primaryColor,
                ),
                child: Icon(
                  category.categoryIcon,
                  size: 35,
                ),
              ),
              const SizedBox(width: 10,),
              Text(
                category.name,
                style:const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}