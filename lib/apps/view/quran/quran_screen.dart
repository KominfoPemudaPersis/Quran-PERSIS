import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persis/apps/controller/quran_controller.dart';
import 'package:persis/apps/view/quran/widget/list_data.dart';
import 'package:persis/utils/consts.dart';

class QuranScreen extends GetView<QuranController> {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Const.appNameQuran),
      ),
      body: Center(
        child: SurahListData(),
      ),
    );
  }
}
