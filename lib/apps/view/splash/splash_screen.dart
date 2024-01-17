import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persis/utils/consts.dart';
import 'package:persis/utils/routes.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.home);
    });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Const.appSplashUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  Const.appLogoUrl,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                Const.appName,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: Const.appFontMontserrat,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                Const.appVersion,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: Const.appFontMontserrat,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  Const.appDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: Const.appFontMontserrat,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
