import 'package:get/get.dart';
import 'package:persis/apps/view/dashboard/dashboard_screen.dart';
import 'package:persis/apps/view/quran/quran_screen.dart';
import 'package:persis/apps/view/splash/splash_screen.dart';

class Routes {
  static const String initial = '/';
  static const String home = '/home';
  static const String quran = '/quran';
  static const String quranDetail = '/quran/detail';
  static const String setting = '/setting';

  static final List<GetPage> pages = [
    GetPage(name: initial, page: () => const AppSplashScreen()),
    GetPage(
        name: home,
        page: () => const DashboardScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: quran,
        page: () => const QuranScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: quranDetail,
        page: () => const QuranScreen(),
        transition: Transition.fadeIn),
    // GetPage(
    //     name: setting,
    //     page: () => const SettingScreen(),
    //     transition: Transition.fadeIn),
  ];
}
