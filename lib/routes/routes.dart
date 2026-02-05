
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:machine_test_mohit/features/home/product/product_screen.dart';

import '../features/auth/binding/login_binding.dart';
import '../features/auth/view/login.dart';
import '../features/home/product/product_binding.dart';
import '../features/splash/splash.dart';
import '../features/splash/splash_binding.dart';

class AppRoutes {
  static String home = '/home';   //path

  static String splash = '/splash';
  static String login = '/login';

  static String onboarding = '/onboard';
  static String mentioneduserProfile = '/MentionedUserProfile';
  static String productdetails = '/ProductDetails';


  static List<GetPage> pages = [

    GetPage(name: splash, page: () => SplashScreen(),binding: SplashBinding()),
    GetPage(name: login, page: () => LoginScreen(),binding: LoginBinding()),
    GetPage(name: productdetails, page: () => ProductScreen(),binding: ProductBinding()),

    // GetPage(name: home, page: () => const FirstScreen()),
    // GetPage(
    //     name: mentioneduserProfile, page: () => const MentionedUserProfile()),

  ];
}

