import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store/components/app_text_field.dart';
import 'package:watch_store/components/avatar.dart';
import 'package:watch_store/components/main_button.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';
import 'package:watch_store/utility/strings.dart';
import 'package:watch_store/utility/text_style.dart';

class RigsterScreen extends StatelessWidget {
  RigsterScreen({super.key});
  final TextEditingController _controllerNameLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Get.width, Get.height * .1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              const Text(
                AppStrings.register,
                style: LightAppTextStyles.title,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppDimens.large.height,
                const Avatar(),
                AppDimens.large.height,
                AppTextField(
                    label: AppStrings.nameLastName,
                    hint: AppStrings.hintNameLastName,
                    controller: _controllerNameLastName),
                AppTextField(
                    label: AppStrings.homeNumber,
                    hint: AppStrings.hintHomeNumber,
                    controller: _controllerNameLastName),
                AppTextField(
                    label: AppStrings.address,
                    hint: AppStrings.hintAddress,
                    controller: _controllerNameLastName),
                AppTextField(
                    label: AppStrings.postalCode,
                    hint: AppStrings.hintPostalCode,
                    textDirection: TextDirection.rtl,
                    controller: _controllerNameLastName),
                AppTextField(
                  label: AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: _controllerNameLastName,
                  icon: const Icon(Icons.location_on),
                ),
                AppDimens.large.height,
                MainButton(
                  text: AppStrings.register,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
