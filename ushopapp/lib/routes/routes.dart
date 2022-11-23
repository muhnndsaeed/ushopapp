import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ushopapp/logic/bindings/auth_binding.dart';
import 'package:ushopapp/logic/bindings/main_binding.dart';
import 'package:ushopapp/logic/bindings/product_binding.dart';
import 'package:ushopapp/view/screens/auth/forgot_password_screen.dart';
import 'package:ushopapp/view/screens/auth/login_screen.dart';
import 'package:ushopapp/view/screens/auth/signup_screen.dart';
import 'package:ushopapp/view/screens/cart_screen.dart';
import 'package:ushopapp/view/screens/main_screen.dart';

import '../view/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;
  static const mainScreen = Routes.mainScreen;

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBinding(),
        ProductBinding(),
      ],
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
}
