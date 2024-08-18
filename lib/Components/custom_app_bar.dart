import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Data/fake_data.dart';
import '../Utils/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String appBartTitle;
  CustomAppBar({super.key, required this.appBartTitle});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: FakeData.user.avatarURL,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Text(
            appBartTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            print("Cart Button Pressed");
          },
          icon: Icon(Icons.shopping_cart, color: AppTheme.primaryColor, size: 30,),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: AppTheme.inkGrey,
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              IconButton(
                onPressed: () {
                  print("Notification Button Pressed");
                },
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                ),
              ),
              Positioned(
                right: 12,
                top: 15,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 5,),
      ],
    );
  }
}
