import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:persis/apps/model/surah_model.dart';

class Service {
  Future<List<SurahModel>> getSurahList() async {
    String data = await rootBundle.loadString('assets/json/quranlists.json');
    List<dynamic> surahs = json.decode(data);
    return surahs.map((json) => SurahModel.fromJson(json)).toList();
  }
}
