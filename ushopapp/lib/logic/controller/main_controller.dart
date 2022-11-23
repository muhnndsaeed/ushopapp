import 'package:get/get.dart';
import 'package:ushopapp/view/screens/catagory_screen.dart';
import 'package:ushopapp/view/screens/favourite_screen.dart';
import 'package:ushopapp/view/screens/home_screen.dart';
import 'package:ushopapp/view/screens/settings_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  final title = ["Mhnd Shop", "Categories", "Favourites", "Settings"];
}
