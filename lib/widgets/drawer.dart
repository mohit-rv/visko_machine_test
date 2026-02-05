//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_chat/feature/profile/controller/profile_controller.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../feature/auth/controller/login_controller.dart';
// import 'colors.dart';
//
//
// class MyDrawer extends StatelessWidget {
//   // var userData = [];
//    MyDrawer({Key? key}) : super(key: key);
//    // MyDrawer({Key? key,required this.userData}) : super(key: key);
//    final  profcontroller= Get.find<ProfileController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             decoration: const BoxDecoration(color:Colors.blueAccent),
//             accountName: Text(profcontroller.loggedInUser?.name.toString()?? ''),
//             accountEmail: InkWell(
//               onTap: () {
//                 // Get.toNamed();
//               },
//               child:Text(profcontroller.loggedInUser?.email.toString()?? ''),
//             ),
//             currentAccountPicture: CircleAvatar(
//               radius: 40,
//               backgroundColor: Colors.grey.shade200,
//               child: ClipOval(
//                 child: CachedNetworkImage(
//                   imageUrl: profcontroller.loggedInUser?.imageUrl.toString()??'',
//                   width: 80,
//                   height: 80,
//                   fit: BoxFit.cover,
//                   placeholder: (context, url) =>
//                   const CupertinoActivityIndicator(),
//                   errorWidget: (context, url, error) =>
//                   const Icon(Icons.error,size: 80,),
//                 ),
//               ),
//             ),
//
//           ),
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/delivery_icon.svg'),
//             title: const Text('Address'),
//             onTap: () {
//             },
//           ),
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/notification_icon.svg'),
//             title: const Text('Notification'),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/about_icon.svg'),
//             title: const Text('About Us'),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/help_icon.svg'),
//             title: const Text('Contact Us'),
//             onTap: () {
//
//             },
//           ),
//           const Divider(),
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/promo_icon.svg'),
//             title: const Text('Privacy Policy'),
//             onTap: () {
//
//             },
//           ),
//
//           ListTile(
//             // leading: SvgPicture.asset('assets/images/account_icons/help_icon.svg'),
//             title: const Text('FAQs'),
//             onTap: () async {
//
//             },
//           ),
//           ListTile(
//             // leading: const Icon(Icons.logout_outlined,),
//             title: const Text('Logout'),
//             onTap: ()  {
//               showLogoutDialog();
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text('Follow us on'),
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: Image.network(
//                         'https://logowik.com/content/uploads/images/facebook-round-black-icon4588.logowik.com.webp',
//                         height: 35,
//                         width: 35,
//                       ),
//                       onPressed: () {
//                         // showLogoutDialog();
//                       },
//                     ),
//                     IconButton(
//                       icon: Image.network(
//                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTokAJBQ3G-hzXhwhAv4R2OeGFwSOTCVfQeqw&s',
//                         height: 30,
//                         width: 30,
//                       ),
//                       onPressed: () {
//
//                       },
//                     ),
//                     IconButton(
//                       icon: Image.network(
//                         'https://img.freepik.com/premium-vector/new-twitter-vs-xcom-novation-elon-mask-popular-social-media-button-icon-instant-messenger-logo-twitter-editorial-vector_661108-8665.jpg',
//                         height: 30,
//                         width: 30,
//                       ),
//                       onPressed: () {
//
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           const Divider(),
//           ListTile(
//             title: const Text('Terms and Conditions'),
//             trailing: const Text('V 1.0.0'),
//             onTap: () {
//
//             },
//           ),
//         ],
//       ),
//     );
//   }
//   // Future<void> logout() async {
//   //   try {
//   //     final FirebaseAuth auth = FirebaseAuth.instance;
//   //     await auth.signOut();
//   //
//   //     SharedPreferences sp = await SharedPreferences.getInstance();
//   //     sp.clear();
//   //     Get.snackbar('Success', 'Logout Successfully');
//   //
//   //     Get.offAllNamed(AppRoutes.login);
//   //   } catch (e) {
//   //     Get.snackbar('Error', 'Logout Failed. Please try again.');
//   //     print('Logout error: $e');
//   //   }
//   // }
//
//    void showLogoutDialog() {
//      Get.dialog(
//        AlertDialog(
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(15),
//          ),
//          title: const Text("Logout"),
//          content: const Text("Do you really want to logout?"),
//          actions: [
//            TextButton(
//              onPressed: () => Get.back(),
//              child: const Text("Cancel"),
//            ),
//            ElevatedButton(
//              onPressed: () async {
//                Get.back();
//                await  profcontroller.logout();
//              },
//              style: ElevatedButton.styleFrom(
//                backgroundColor: Colors.blueAccent,
//              ),
//              child: const Text("Logout",
//                style: TextStyle(color: Colors.white,
//                  fontWeight: FontWeight.bold,
//
//                ),
//              ),
//            ),
//          ],
//        ),
//        barrierDismissible: false,
//      );
//    }
//
//
// }
