import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  AuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (false) {
      return RouteSettings(name: "/lessons");
    }
    return null;
  }
}
