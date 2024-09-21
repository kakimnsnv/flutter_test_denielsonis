import 'package:flutter/material.dart';
import 'package:flutter_test_denielsonis/core/widgets/bottom_navigation_bar.dart';
import 'package:flutter_test_denielsonis/core/widgets/bottom_navigation_bar_controller.dart';
import 'package:flutter_test_denielsonis/features/auth/screens/profile_screen.dart';
import 'package:flutter_test_denielsonis/features/course/screens/favorites_screen.dart';
import 'package:flutter_test_denielsonis/features/course/screens/lessons_screen.dart';
import 'package:flutter_test_denielsonis/features/course/screens/plans_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// ignore: constant_identifier_names
enum HomeScreens { LESSONS, FAVORITES, PLAN, PROFILE }

class HomeScreen extends StatelessWidget {
  HomeScreen({this.page = HomeScreens.LESSONS, super.key});

  final BottomNavigationBarController controller = Get.put(BottomNavigationBarController());

  final HomeScreens page;

  @override
  StatelessElement createElement() {
    switch (page) {
      case HomeScreens.LESSONS:
        controller.changeIndex(0);
        break;
      case HomeScreens.FAVORITES:
        controller.changeIndex(1);
        break;
      case HomeScreens.PLAN:
        controller.changeIndex(2);
        break;
      case HomeScreens.PROFILE:
        controller.changeIndex(3);
        break;
    }
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: [
              LessonsScreen(),
              const FavoritesScreen(),
              const PlanScreen(),
              const ProfileScreen(),
            ],
          ),
        ),
      );
    });
  }
}
