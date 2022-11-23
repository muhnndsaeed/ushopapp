import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ushopapp/routes/routes.dart';
import 'package:ushopapp/utils/theme.dart';
import 'package:ushopapp/view/screens/auth/login_screen.dart';

import '../widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: TextUtils(
                        fontsize: 35,
                        fontWeight: FontWeight.bold,
                        text: 'Welcome',
                        color: Colors.white,
                        underline: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextUtils(
                          text: 'Muhnd',
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                          underline: TextDecoration.none,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                          text: 'Shop',
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underline: TextDecoration.none,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        )),
                    onPressed: () {
                      Get.offNamed(Routes.loginScreen);
                    },
                    child: const TextUtils(
                        text: 'Get Start',
                        fontsize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        underline: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextUtils(
                        text: "Don't have an Account?",
                        fontsize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        underline: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signUpScreen);
                        },
                        child: const TextUtils(
                          text: 'Sign up',
                          fontsize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          underline: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
