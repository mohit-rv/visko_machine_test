

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'controller/spl_contr.dart';

class SplashBinding extends Bindings {  //best jab routing me binding kerna ho
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());

  }
}