import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persis/apps/controller/quran_controller.dart';
import 'package:persis/apps/model/surah_model.dart';
import 'package:persis/utils/routes.dart';

class SurahListData extends StatelessWidget {
  final QuranController controller = Get.put(QuranController());

  SurahListData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: controller.surahList.length,
          itemBuilder: (context, index) {
            SurahModel surah = controller.surahList[index];
            return ListTile(
              title: Text(surah.namaLatin),
              subtitle: Text(surah.nama),
              leading: Text(surah.nomor.toString()),
              onTap: () {
                Get.toNamed(Routes.quranDetail, arguments: surah);
              },
            );
          },
        ),
      ),
    );
  }
}
