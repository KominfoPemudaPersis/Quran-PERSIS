import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:persis/apps/controller/dashboard_controller.dart';
import 'package:persis/apps/model/berita_model.dart';
import 'package:persis/apps/view/dashboard/widget/berita_screen.dart';
import 'package:persis/utils/consts.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Const.appIconUrlDashboard,
                width: 55.0,
                height: 55.0,
                color: const Color(0xFF007B88).withOpacity(0.8),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Const.appName,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontFamily: Const.appFontNunitoSans,
                      ),
                    ),
                    Text(
                      Const.appWelcome,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: Const.appFontNunitoSans,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items: controller.bannerImages.map((image) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(image, fit: BoxFit.cover),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: controller.menuItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(controller.menuItems[index].route);
                    },
                    child: Card(
                      color: const Color(0xFFBDE8EC),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            controller.menuItems[index].icon,
                            size: 28.0,
                            color: const Color(0xFF32B8C4),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            controller.menuItems[index].title,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: Const.appFontNunitoSans,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16.0),
              BeritaListScreen(
                beritaList: [
                  BeritaModel(
                    title:
                        'Ketua dan Tasykil PW PERSIS Sumut Resmi Dilantik, Penasehat: Torehkan Tinta Emas 5 Tahun Ke Depan!',
                    content:
                        'Jakarta, persis.or.id - Penasehat Pimpinan Wilayah Persatuan Islam (PERSIS) Sumatera Utara (Sumut) Abdul Aziz menaruh harapan besar kepada ketua dan tasykil PW PERSIS Sumut masa jihad 2023-2028 yang barsu saja dilantik Ahad lalu. Untuk membawa Jamiyyah ini jauh lebih baik lagi.',
                    imageUrl:
                        'https://i.ibb.co/jVdF43K/Whats-App-Image-2023-12-12-at-14-20-33-ddca8132.jpg',
                  ),
                  BeritaModel(
                    title:
                        'Ketum PP PERSISTRI: Semua Anggota Jamiyyah Harus Jalankan Peran Sebaik-baiknya',
                    content:
                        'Medan, persis.or.id - Pimpinan Pusat Persatuan Islam Istri (PP PERSISTRI) melakukan pembekalan dan pembinaan kejamiyahan kepada seluruh peserta Musyawarah Wilayah (Muswil) V Pimpinan Wilayah PERSISTRI Sumatera Utara (PW PERSISTRI Sumut).',
                    imageUrl: 'https://iili.io/JTKJYR1.jpg',
                  ),
                  BeritaModel(
                    title:
                        'Ustaz Yusran Hadi: "Memboikot Produk Israel dan Pendukungnya Hukumnya Wajib, Mendukung Israel Hukumnya Haram."',
                    content:
                        'Banda Aceh, persis.or.id - Ketua bidgar PW Persis Aceh Ustaz Dr. Muhammad Yusran Hadi, Lc., MA mengajak umat Islam untuk memboikot produk Israel dan para  pendukungnya sebagai bentuk solidaritas terhadap umat Islam Palestina dan aksi protes terhadap Israel atas pembantaian umat Islam di Gaza Palestina. ',
                    imageUrl:
                        'https://i.ibb.co/tB92b31/Whats-App-Image-2023-11-28-at-01-13-06-420585b6.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
