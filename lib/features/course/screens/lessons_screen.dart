import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_denielsonis/core/styles/colors.dart';
import 'package:flutter_test_denielsonis/core/styles/decorations.dart';
import 'package:flutter_test_denielsonis/features/course/controllers/lesson_screen_controller.dart';
import 'package:flutter_test_denielsonis/features/course/models/lesson_models.dart';
import 'package:flutter_test_denielsonis/generated/l10n.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class LessonsScreen extends StatelessWidget {
  LessonsScreen({super.key});

  final LessonScreenController controller = Get.put(LessonScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              const LessonsScreenTop(),
              if (controller.subscriptionBadgeShown.value) SubscriptionBadge(),
              SectionRow(controller: controller),
              if (controller.isListShown.value)
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                      LessonTile(lesson: Lesson(id: "id", title: "title", description: "description", imageURL: "imageURL")),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonTile extends StatelessWidget {
  const LessonTile({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16).r,
      decoration: containerDecoration16,
      child: Row(
        children: [
          // Image.network(lesson.imageURL), // TODO: uncomment this line
          Container(
            height: 80.h,
            width: 80.w,
            decoration: containerDecoration16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lesson.title,
                  style: Get.textTheme.bodySmall?.copyWith(color: Colors.grey),
                ),
                Text(
                  lesson.description,
                  style: Get.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionRow extends StatelessWidget {
  const SectionRow({
    super.key,
    required this.controller,
  });

  final LessonScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).r,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${S.of(context).section} 1', style: Get.textTheme.titleSmall),
              Text(S.of(context).sectionSubtitle),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => controller.isListShown.toggle(),
            child: Container(
              padding: const EdgeInsets.all(13).r,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16).r),
              child: Icon(
                controller.isListShown.value ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionBadge extends StatelessWidget {
  SubscriptionBadge({
    super.key,
  });

  final LessonScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16).r,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: primaryColor)),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16).r,
          topRight: const Radius.circular(16).r,
          bottomLeft: const Radius.circular(8).r,
          bottomRight: const Radius.circular(8).r,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 21).r,
                height: 76,
                width: 76,
                color: Colors.red,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).subscriptionBadgeSubtitle, style: Get.textTheme.labelMedium?.copyWith(color: Colors.grey)),
                  Text(S.of(context).subscriptionBadgeTitle, style: Get.textTheme.titleSmall),
                  Text(S.of(context).subscriptionBadgeDescription),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    controller.subscriptionBadgeShown.toggle();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16).r,
                    alignment: Alignment.center,
                    color: primaryColor,
                    child: Text(
                      S.of(context).buySubscription,
                      style: Get.textTheme.titleLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LessonsScreenTop extends StatelessWidget {
  const LessonsScreenTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).r,
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.r,
            child: Image.network("https://th.bing.com/th/id/OIP.1gqxePGrU4JMYrWZJy1XaQAAAA?rs=1&pid=ImgDetMain"),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Polska", style: Theme.of(context).textTheme.titleMedium?.copyWith(color: textButtonColor)),
                    Icon(
                      Icons.arrow_drop_down,
                      color: textButtonColor,
                    ),
                  ],
                ),
                Text(
                  "Likar (B2)",
                  style: Get.textTheme.labelMedium,
                ),
                Row(
                  children: [
                    const Expanded(child: LinearProgressIndicator(value: 0)),
                    SizedBox(width: 4.w),
                    const Text("1%"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16).r,
            ),
            padding: const EdgeInsets.all(13).r,
            child: Icon(Icons.notifications, color: primaryColor),
          ),
        ],
      ),
    );
  }
}
