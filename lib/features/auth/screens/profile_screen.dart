import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_denielsonis/core/styles/colors.dart';
import 'package:flutter_test_denielsonis/core/styles/decorations.dart';
import 'package:flutter_test_denielsonis/features/auth/user_session.dart';
import 'package:flutter_test_denielsonis/generated/l10n.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileTopContainer(),
              SizedBox(height: 8.h),
              ProfileListTile(
                title: S.of(context).language,
                subtitle: Intl.getCurrentLocale() == "ua" ? "Українська" : "English",
                onTap: () {
                  Get.bottomSheet(IntrinsicHeight(child: Container(child: Column(children: [ProfileListTile(title: "Українська"), ProfileListTile(title: "English")]))));
                },
              ),
              ProfileListTile(title: S.of(context).changePassword),
              ProfileListTile(title: S.of(context).notifications),
              ProfileListTile(title: S.of(context).shareWithFriends),
              Padding(
                padding: const EdgeInsets.all(16).r,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    S.of(context).licenceAgreement,
                    style: Get.textTheme.bodySmall?.copyWith(color: textButtonColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: containerDecoration16,
        padding: EdgeInsets.symmetric(vertical: 17.5, horizontal: 16).r,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8).r,
        child: Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const Spacer(),
            Text(subtitle ?? "", style: Theme.of(context).textTheme.labelMedium),
            SizedBox(width: 8.w),
            Icon(Icons.arrow_forward_ios, color: primaryColor),
          ],
        ),
      ),
    );
  }
}

class ProfileTopContainer extends StatelessWidget {
  ProfileTopContainer({
    super.key,
  });

  final UserSession controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16).r,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16).r,
      margin: const EdgeInsets.all(16).r,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: () {}, child: Icon(Icons.edit, color: primaryColor)),
              GestureDetector(
                  onTap: () {
                    controller.user = null;
                    controller.update();
                    Get.offAllNamed("/auth");
                  },
                  child: Icon(Icons.logout, color: primaryColor)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16).r,
            child: CircleAvatar(
              radius: 60.r,
              child: Image.network(controller.user?.imageURL ?? "https://th.bing.com/th/id/OIP.1gqxePGrU4JMYrWZJy1XaQAAAA?rs=1&pid=ImgDetMain"),
            ),
          ),
          Text(controller.user?.name ?? "Байда Вишневецький", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 8.h),
          Text(controller.user?.email ?? "username@gmail.com", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: primaryColor)),
          SizedBox(height: 28.h),
          Text(S.of(context).subscriptionBadgeSubtitle, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
