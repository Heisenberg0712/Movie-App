class Movie {
  Movie(
      {required this.name,
      required this.overview,
      required this.rating,
      required this.language,
      required this.poster});
  String name;
  String overview;
  String rating;
  String language;
  String poster;
}

List<Movie> movieList = [
  Movie(
      name: "The Batman",
      overview: "Gotham city saving film",
      rating: "98%",
      language: "English",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/74xTEgt7R36Fpooo50r9T25onhq.jpg"),
  Movie(
      name: "Ambulance",
      overview: "Ambulance film, very good",
      rating: "67%",
      language: "English",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/zT5ynZ0UR6HFfWQSRf2uKtqCyWD.jpg"),
  Movie(
      name: "The Uncharted",
      overview: "Spiderman hero adventrue film",
      rating: "88%",
      language: 'English',
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/sqLowacltbZLoCa4KYye64RvvdQ.jpg"),
  Movie(
      name: "SpiderMan: No way home",
      overview: "Spiderman and magician very good fight",
      rating: "99%",
      language: "English",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg"),
  Movie(
      name: "Moonfall",
      overview: "Moon coming to earth and people dont care",
      rating: "66%",
      language: "English",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg"),
  Movie(
      name: "Encanto",
      overview: "cartoon movie, very boring",
      rating: "56%",
      language: "Spanish",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg"),
  Movie(
      name: "The Adam Project",
      overview: "Sci fi film, Boring dont watch",
      rating: "45%",
      language: "English",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg"),
  Movie(
      name: "The Black crab",
      overview: "God knows what is happening in the film",
      rating: "15%",
      language: "Swedish",
      poster:
          "https://www.themoviedb.org/t/p/w220_and_h330_face/mcIYHZYwUbvhvUt8Lb5nENJ7AlX.jpg"),
];
