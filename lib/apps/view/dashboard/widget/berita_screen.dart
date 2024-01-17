import 'package:flutter/material.dart';
import 'package:persis/apps/model/berita_model.dart';
import 'package:persis/apps/view/dashboard/widget/berita_widget.dart';

class BeritaListScreen extends StatelessWidget {
  final List<BeritaModel> beritaList;

  const BeritaListScreen({Key? key, required this.beritaList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: beritaList.length,
        itemBuilder: (context, index) {
          final berita = beritaList[index];
          return BeritaWidget(berita: berita);
        },
      ),
    );
  }
}
