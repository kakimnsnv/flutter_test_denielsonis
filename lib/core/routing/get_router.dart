import 'package:flutter_test_denielsonis/core/routing/auth_middleware.dart';
import 'package:flutter_test_denielsonis/features/auth/screens/auth_screen.dart';
import 'package:flutter_test_denielsonis/features/course/screens/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: "/auth", page: () => AuthScreen(), middlewares: [AuthMiddleware(priority: 1)]),
  GetPage(name: "/lessons", page: () => HomeScreen(page: HomeScreens.LESSONS)),
  GetPage(name: "/favorites", page: () => HomeScreen(page: HomeScreens.FAVORITES)),
  GetPage(name: "/plan", page: () => HomeScreen(page: HomeScreens.PLAN)),
  GetPage(name: "/profile", page: () => HomeScreen(page: HomeScreens.PROFILE)),
];

String initialRoute = "/auth";
