import 'package:flutter/material.dart';
import 'package:prak4/detail_screen.dart';
import 'package:prak4/list_item.dart';
import 'package:prak4/model/tourism_place.dart';
import 'package:prak4/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      desc: 'Kota Surabaya memiliki monumen terbesar di Asia, yaitu Monumen Kapal Selam (Monkasel). Monumen ini dibangun sebagai wujud mengabadikan sejarah perjuangan Indonesia melawan penjajah sekaligus pelestarian warisan negara. Kapal selam yang dijadikan monumen di Kota Surabaya ini merupakan KRI Pasopati 410 yang asli, bukan replika. KRI Pasopati 410 merupakan kapal selam pertama yang masuk ke Angkatan Laut pada 29 Januari 1962.',
      open: 'Setiap Hari',
      time: '08.00 - 21.00',
      ticket: 'Rp15.000,-',
      photo1: 'assets/images/monkasel_1.jpg',
      photo2: 'assets/images/monkasel_2.jpg',
      photo3: 'assets/images/monkasel_3.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg',
      desc: 'Kelenteng yang lokasinya berada di kawasan Pantai Ria Kenjeran menjadikan  memiliki daya tarik tersendiri. Di sini berdiri banyak patung-patung seperti Dewi Kwan Im yang merupakan ikon dari kelenteng ini, patung Sha Nan dan Tong Nu serta patung naga yang meliuk. Kelenteng ini cocok dijadikan tempat wisata religi. Jika ingin lebih mendapatkan suasana sakral, kamu bisa datang saat perayaan Imlek karena kelenteng ini rama dikunjungi orang untuk beribadah maupun wisatawan lokal maupun asing.',
      open: 'Setiap Hari',
      time: '09.00 - 17.00',
      ticket: 'Rp5.000 - Rp10.000',
      photo1: 'assets/images/klenteng_1.jpg',
      photo2: 'assets/images/klenteng_2.jpg',
      photo3: 'assets/images/klenteng_3.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
      desc: 'Museum kretek yang beralamat di Taman Sampoerna 6 ini awalnya merupakan tempat pertama produksi rokok Sampoerna. Di sini kamu bisa mengenal sejarah kretek di Indonesia. Mulai dari mengenal jenis-jenis cengkeh, pemantik rokok, dan tentu saja bisa melihat proses pembuatan rokok. Museum ini juga menawarkan kepada pengunjung keliling Surabaya gratis dengan menggunakan sebuah bus. Museum ini juga memiliki kafe dan tempat penjualan suvenir di lantai dua. Tentu saja museum ini juga cukup Instagramable untuk dijadikan spot foto. Siapkan kamera, ya!',
      open: 'Setiap Hari',
      time: '00.00 - 24.00 WIB',
      ticket: 'Free',
      photo1: 'assets/images/sampoerna_1.jpg',
      photo2: 'assets/images/sampoerna_2.jpg',
      photo3: 'assets/images/sampoerna_3.jpeg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg',
      desc: 'Monumen ini merupakan ikon dari Surabaya yang sangat populer. Tugu Pahlawan dikelilingi oleh tanaman hijau yang rindang, cocok untuk tempat bersantai setelah keliling Kota Surabaya.Tugu yang menjulang tinggi ini sudah berdiri sejak masa penjajahan. Jangan khawatir, kamu tidak akan dikenakan biaya jika mengunjungi tempat ini dikarenakan Tugu Pahlawan gratis untuk umum.',
      open: 'Setiap Hari',
      time: '00.00 - 24.00 WIB',
      ticket: 'Free',
      photo1: 'assets/images/pahlawan_1.jpg',
      photo2: 'assets/images/pahlawan_2.jpeg',
      photo3: 'assets/images/pahlawan_3.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg',
      desc: 'Selain Tugu Pahlawan, Surabaya juga memiliki patung yang jadi ikon kota yakni Patung Suro dan Boyo. Patung ini memiliki cerita bagaimana Kota Pahlawan bisa dinamakan menjadi Surabaya. Tak afdol rasanya kalau ke Surabaya tapi enggak foto-foto berlatar patung hiu dan buaya ini. Ada beberapa titik untuk mengabadikan foto berlatar patung Suro dan Boyo. Salah satu spot yang terbaik adalah dari Taman Skateboard.',
      open: 'Setiap Hari',
      time: '00.00 - 24.00',
      ticket: 'Free',
      photo1: 'assets/images/sby_1.jpg',
      photo2: 'assets/images/sby_2.jpg',
      photo3: 'assets/images/sby_3.jpg',
    ),
    TourismPlace(
      name: 'Kebun Binatang Surabaya',
      location: 'Wonokromo',
      imageAsset: 'assets/images/kbs.jpg',
      desc: 'Tempat wisata yang selalu ramai dan diminati di setiap kota termasuk Surabaya adalah kebun binatang. Lokasinya yang terletak di pusat kota membuat Kebun Binatang Surabaya selalu ramai setiap harinya. Kebun binatang ini jadi salah satu yang tertua di Indonesia, lho. Hanya dengan merogoh kocek Rp 15.000, kamu sudah bisa melihat aneka ragam satwa yang dimiliki kebun binatang ini. Eits, jangan berkunjung di tanggal merah ya, karena Kebun Binatang Surabaya buka setiap hari kecuali tanggal merah.',
      open: 'Setiap Hari',
      time: '08.00 - 16.00',
      ticket: 'Rp15.000,-',
      photo1: 'assets/images/kbs_1.jpg',
      photo2: 'assets/images/kbs_2.jpg',
      photo3: 'assets/images/kbs_3.jpg',
    ),
    TourismPlace(
      name: 'Atlantis Land',
      location: 'Bulak',
      imageAsset: 'assets/images/atlantis.jpg',
      desc: 'Surabaya dikenal dengan cuaca panasnya. Maka dari itu, mengunjungi taman wisata air mungkin jadi pilihan tepat untuk menyegarkan diri. Salah satu yang layak untuk dikunjungi adalah Atlantis Land. Taman wisata ini gak cuma menyediakan kolam renang dengan banyak perosotan panjang. Atlantis Land juga memiliki banyak wahana hingga atraksi yang siap bikin kamu terhibur.',
      open: 'Setiap Hari',
      time: '10.00 - 22.00',
      ticket: 'Rp100.000 - Rp125.000',
      photo1: 'assets/images/atlantis_1.jpg',
      photo2: 'assets/images/atlantis_2.jpg',
      photo3: 'assets/images/atlantis_3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
                return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value) {
                      data.complete(place, value!);
                  },
                );
              }),
            );
          },
      itemCount: tourismPlaceList.length,
    );
  }
}
