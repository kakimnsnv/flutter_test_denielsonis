import 'package:flutter_test_denielsonis/features/auth/models/auth_models.dart';
import 'package:get/get.dart';

class UserSession extends GetxController {
  static UserSession get find => Get.find();

  User? user;

  void setUser(User user) {
    this.user = user;
    update();
  }
}
