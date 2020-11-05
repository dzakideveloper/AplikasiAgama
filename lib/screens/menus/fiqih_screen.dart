import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle = baseTextStyle.copyWith(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

class _HomeScreenState extends State<HomeScreen> {
  List<String> androidVersions = [
    "definisi adab sebagai : kesopanan, kehalusan serta kebaikan budi pekerti dan akhlaq,",
    " Dalil, orang orang yang beriman yang paling sempurna imannya adalah yang paling baik akhlaqnya",
    "Memakan makanan yang halal, meniatkan tujuan untuk menguatkan badan",
    "memulai makanan dengan membaca Bissmillah",
    " hendaknya tidak meniup makanan",
    "definisi adab sebagai : kesopanan, kehalusan serta kebaikan budi pekerti dan akhlaq,",
    " Dalil, orang orang yang beriman yang paling sempurna imannya adalah yang paling baik akhlaqnya",
  ];

  List<String> gambar = [
    "assets/images/gambar2.jpg",
    'assets/images/gambar1.jpg',
    "assets/images/gambar2.jpg",
    'assets/images/gambar1.jpg',
    "assets/images/gambar2.jpg",
    'assets/images/gambar1.jpg',
    "assets/images/gambar2.jpg",
    'assets/images/gambar1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: androidVersions.length,
          itemBuilder: (BuildContext context, int index) {
            final title = androidVersions[index].toString();
            final img = gambar[index].toString();
            return Container(
              height: 200.0,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(img),
                    Container(
                      child: topContent(title),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: AssetImage(gambar))),
    );
  }

  topContent(String nama) {
    return new Container(
      height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Container(
            height: 2.0,
            width: 80.0,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
