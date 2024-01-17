import 'package:flutter/material.dart';
import 'package:persis/utils/consts.dart';

class ArtikelWidget extends StatelessWidget {
  const ArtikelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF007B88),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Const.appNameBerita,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade700,
              fontFamily: Const.appFontNunitoSans,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'PP PERSIS Dorong Kepala BNN Marthinus Agar Lebih Fokus Selesaikan Peredaran Narkoba di Indonesia',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'NunitoSans',
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Jakarta, persis.or.id - Pimpinan Pusat Persatuan Islam menaruh harapan besar kepada Kepala Badan Narkotika Nasional (BNN) yang baru saja dilantik Bapak Marthinus Hukom agar lebih fokus lagi dalam menangani penyalahgunaan dan peredaran narkoba di Indonesia. Hal ini dikatakan Ketua Umum PP Persatuan Islam (PERSIS) Ustaz Dr. Jeje Zaenudin ketika dimintai keterangannya, Selas (12/13/2023).',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'NunitoSans',
            ),
          ),
        ],
      ),
    );
  }
}
