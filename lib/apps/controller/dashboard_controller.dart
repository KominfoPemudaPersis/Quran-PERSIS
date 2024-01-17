import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persis/apps/model/menu_model.dart';
import 'package:persis/utils/routes.dart';

class DashboardController extends GetxController {
  List<String> bannerImages = [
    'https://i.ibb.co/74JJbVG/Whats-App-Image-2023-12-12-at-11-02-39-e8ba6b51.jpg',
    'https://iili.io/JTVxbQS.jpg',
    'https://iili.io/JTVAvsV.jpg',
    'https://iili.io/JT2cpaI.jpg',
  ];

  List<MenuModel> menuItems = [
    MenuModel(icon: Icons.book, title: 'Quran', route: Routes.quran),
    MenuModel(icon: Icons.add_alert, title: 'Test', route: Routes.quran),
    MenuModel(icon: Icons.ac_unit_sharp, title: 'Menu', route: Routes.quran),
    MenuModel(
        icon: Icons.access_time_outlined, title: 'Xyz', route: Routes.quran),
  ];

  @override
  void onInit() {
    super.onInit();
    bannerImages.shuffle();
  }
}
