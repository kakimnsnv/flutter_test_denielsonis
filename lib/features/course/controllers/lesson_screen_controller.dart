import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LessonScreenController extends GetxController {
  static LessonScreenController get find => Get.find();

  RxBool isListShown = true.obs;
  RxBool subscriptionBadgeShown = true.obs;
}
