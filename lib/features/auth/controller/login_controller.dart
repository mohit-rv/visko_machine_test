import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../app_base_controller/app_base_conroller.dart';
import '../../../routes/routes.dart';

class LoginController extends AppBaseController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? userName;
  String? userEmail;
  String? userPhotoUrl;

  void signInWithGoogle() async {
    try {
      setBusy(true);
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        setBusy(false);
        Get.snackbar(
          'Login cancelled',
          'User not registered or Google sign-in cancelled',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = userCredential.user;

      if (user != null) {
        userName = user.displayName;
        userEmail = user.email;
        userPhotoUrl = user.photoURL;

        print('Google User Name: $userName');
        print('Google User Email: $userEmail');
        print('Google User Photo URL: $userPhotoUrl');

        await _firestore.collection('users').doc(user.uid).set({
          'name': userName,
          'email': userEmail,
          'photoUrl': userPhotoUrl,
        });

        Get.offAllNamed(AppRoutes.productdetails);
        Get.snackbar(
          'Login successful',
          'Welcome back, $userName!',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print('fire:  ${e.toString()}');
      Get.snackbar('Error', e.toString());
    } finally {
      setBusy(false);
    }
  }


}
