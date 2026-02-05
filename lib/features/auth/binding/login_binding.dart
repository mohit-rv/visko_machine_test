


import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../controller/login_controller.dart';

class LoginBinding extends Bindings {  //best jab routing me binding kerna ho
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    // Get.put<HomeController>(HomeController(), permanent: true);

  }
}