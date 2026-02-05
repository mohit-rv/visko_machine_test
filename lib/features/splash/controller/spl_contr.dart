import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../auth/controller/login_controller.dart';
// import '../../routes/routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> fadeAnimation;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    print('splash init');
    super.onInit();
    // Get.find<LoginController>().autoLogin();
    autoLogin();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    scaleAnimation = Tween<double>(begin: 0.6, end: 1.0)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOutBack,
    ));

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(animationController);

    animationController.forward();


  }
   void autoLogin()  {
    User? user = _auth.currentUser;
    if (user != null) {
      print('user exist');
      // await fetchUserData(user.uid);
      // Navigate after splash
      Future.delayed(const Duration(seconds: 4), () {
        // Get.offAllNamed('/login'); // or '/home'
        print('going to mainscreen');
        print('user phone : ${user.phoneNumber}');
        print('user name : ${user.displayName}');
        print('user email : ${user.email}');
        Get.offAllNamed(AppRoutes.productdetails);
        // Get.offAllNamed('/onboard');
      });

    } else {

      Future.delayed(const Duration(seconds: 4), () {
        // Get.offAllNamed('/login'); // or '/home'
        print('going to login');

        Get.offAllNamed(AppRoutes.login);
        // Get.offAllNamed('/onboard');
      });

    }
  }

  // @override
  // void onClose() {
  //   animationController.dispose();
  //   super.onClose();
  // }
}
