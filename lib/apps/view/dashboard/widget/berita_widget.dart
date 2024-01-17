import 'package:flutter/material.dart';
import 'package:persis/apps/model/berita_model.dart';
import 'package:persis/utils/consts.dart';

class BeritaWidget extends StatelessWidget {
  final BeritaModel berita;

  const BeritaWidget({Key? key, required this.berita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              berita.imageUrl,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  berita.title,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: Const.appFontNunitoSans,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  berita.content,
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 14.0,
                    fontFamily: Const.appFontNunitoSans,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
