import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';
import 'package:watch_store/utility/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Assets.images.image.avatar.image(height: 100, width: 100),
        ),
        AppDimens.medium.height,
        const Text(AppStrings.chooseProfileimage)
      ],
    );
  }
}
