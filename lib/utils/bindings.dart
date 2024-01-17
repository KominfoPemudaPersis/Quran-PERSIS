import 'package:get/get.dart';
import 'package:persis/apps/controller/dashboard_controller.dart';
import 'package:persis/apps/controller/quran_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(QuranController());
  }
}
