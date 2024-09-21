import 'package:flutter/material.dart';
import 'package:flutter_test_denielsonis/core/widgets/bottom_navigation_bar_controller.dart';
import 'package:flutter_test_denielsonis/generated/l10n.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends GetView<BottomNavigationBarController> {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.current.lessons,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: S.current.favorites,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: S.current.plan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: S.current.profile,
          ),
        ],
      ),
    );
  }
}
