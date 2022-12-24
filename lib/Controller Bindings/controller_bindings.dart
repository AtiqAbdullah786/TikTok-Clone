import 'package:get/get.dart';
import 'package:tictoc/Controllers/comments_controller.dart';
import 'package:tictoc/Controllers/video_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VideoController());
    Get.put(CommentsController());
  }
}
