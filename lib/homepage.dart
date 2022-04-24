import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatefulWidget {
  final title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isElevated = true;
  bool _isTv = true;
  bool _isMovie = false;
  bool _isMyList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/netflix.png",
                  scale: 12,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: neumorphicDecoration(),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        contentPages("TV Shows", _isTv),
                        const SizedBox(
                          width: 10,
                        ),
                        contentPages("Movies", _isMovie),
                        const SizedBox(
                          width: 10,
                        ),
                        contentPages("MyList", _isMyList),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/comedy.png",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Recommended For You",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 13),
              height: 300,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/mcIYHZYwUbvhvUt8Lb5nENJ7AlX.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/74xTEgt7R36Fpooo50r9T25onhq.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/zT5ynZ0UR6HFfWQSRf2uKtqCyWD.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/sqLowacltbZLoCa4KYye64RvvdQ.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                  MovieCard(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg"),
                  const SizedBox(
                    width: 13,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 13,
                ),
                Image.asset(
                  "assets/images/lizard.png",
                  scale: 2,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Watch With Friends",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              height: 400,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/teCy1egGQa0y8ULJvlrDHQKnxBL.jpg",
                      "Hotel Transylvania: Transformania"),
                  const SizedBox(
                    height: 13,
                  ),
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg",
                      "Boss Baby: Family Business"),
                  const SizedBox(
                    height: 13,
                  ),
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vlOgaxUiMOA8sPDG9n3VhQabnEi.jpg",
                      "Minions"),
                  const SizedBox(
                    height: 13,
                  ),
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg",
                      "Minions: Rise of Gru"),
                  const SizedBox(
                    height: 13,
                  ),
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/uXDfjJbdP4ijW5hWSBrPrlKpxab.jpg",
                      "Toy Story"),
                  const SizedBox(
                    height: 13,
                  ),
                  watchWithKhushikaList(
                      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/fb9zF01GKOkNziYVusg20laWsGh.jpg",
                      "Despicable Me"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container watchWithKhushikaList(String link, String text) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 130,
      decoration: neumorphicDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [imageKhushika(link), detailContainerKhushika(text)],
      ),
    );
  }

  Container detailContainerKhushika(String title) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 130,
      width: 100,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "" + title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Download",
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
        ],
      ),
    );
  }

  ClipRRect imageKhushika(String link) {
    return ClipRRect(
      child: Image.network(
        link,
        fit: BoxFit.fill,
        width: 170,
      ),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      ),
    );
  }

  Container MovieCard(String link) {
    return Container(
      padding: const EdgeInsets.all(25),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(link), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  GestureDetector contentPages(String text, bool highlight) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (text == "TV Shows") {
            _isTv = true;
            _isMyList = false;
            _isMovie = false;
          } else if (text == "Movies") {
            _isMovie = true;
            _isMyList = false;
            _isTv = false;
          } else {
            _isMyList = true;
            _isTv = false;
            _isMovie = false;
          }
        });
      },
      child: Container(
        height: 30,
        width: 23.w,
        child: Center(
          child: Text(
            "" + text,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        decoration: highlight
            ? BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(25),
              )
            : null,
      ),
    );
  }

  BoxDecoration neumorphicDecoration() {
    return BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(50),
      boxShadow: _isElevated
          ? const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white10,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 0.5,
              )
            ]
          : null,
    );
  }
}
