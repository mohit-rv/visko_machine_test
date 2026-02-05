import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_mohit/routes/routes.dart';

import '../controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginController>(
        builder: (controller) {
          return SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          const Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              'Welcome Back to Visko',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 80),
                          const Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              'Continue With google ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 25),
                          _socialLoginButton(
                            asset: 'assets/images/img.png',
                            label: 'Google',
                            onTap: controller.signInWithGoogle,
                            context: context,
                          ),
                          const SizedBox(height: 50),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AutoSizeText(
                                'Don\'t have an account?',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 4),
                            ],
                          ),
                          // GestureDetector(
                          //   onTap: (){
                          //     Get.offAllNamed(AppRoutes.productdetails);
                          //   },
                          //   child: Container(
                          //     color: Colors.blue,
                          //     height: 80,
                          //     width: MediaQuery.of(context).size.width*0.5,
                          //     child: Text('Navigate to Hme'),
                          //   ),
                          // ),
                          const Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              'Home',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          _socialLoginButton(
                            asset: 'assets/images/img.png',
                            label: 'Google',
                            onTap: (){
                              Get.offAllNamed(AppRoutes.productdetails);

                            },
                            context: context,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (controller.isBusy)
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: CupertinoActivityIndicator(
                          radius: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _socialLoginButton({
    required String asset,
    required String label,
    required Function onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 88,
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              asset,
              height: 24,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
