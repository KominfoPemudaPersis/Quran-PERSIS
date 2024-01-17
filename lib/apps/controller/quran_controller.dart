import 'package:get/get.dart';
import 'package:persis/apps/model/surah_model.dart';
import 'package:persis/utils/services.dart';

class QuranController extends GetxController {
  final Service _surahService = Service();
  RxList<SurahModel> surahList = <SurahModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadSurahList();
  }

  Future<void> loadSurahList() async {
    surahList.value = await _surahService.getSurahList();
  }
}
