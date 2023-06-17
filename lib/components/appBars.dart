// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/text_style.dart';

class AppBars extends StatelessWidget implements PreferredSizeWidget {
  const AppBars({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(Get.width, Get.height * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          Padding(
            padding: const EdgeInsets.only(left: AppDimens.large),
            child: Text(
              title,
              style: LightAppTextStyles.title,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
