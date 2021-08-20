class NewsData {
  final String newsImage;
  final String title;
  final String content;
  final String date;
  final String url;

  NewsData(
      {required this.newsImage,
      required this.title,
      required this.content,
      required this.date,
      required this.url});

  factory NewsData.fromJson(Map<String, dynamic> json) {
    return NewsData(
        newsImage: json["urlToImage"] == null
            ? "https://images.livemint.com/img/2021/08/19/600x338/ed4c2b30-483f-11eb-bc1d-4bfe13e32b0e_1613400175471_1613400236678_1629360682162.jpg"
            : json["urlToImage"],
        title: json["title"],
        content: json["content"] == null ? "" : json["content"],
        date: json["publishedAt"],
        url: json["url"]);
  }
}
