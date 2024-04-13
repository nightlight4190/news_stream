class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imgUrl,
      required this.newsCnt,
      required this.newsDesc,
      required this.newsHead,
      required this.newsUrl});

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
        imgUrl: article["urlToImage"] ??
            "https://plus.unsplash.com/premium_photo-1688561383440-feef3fee567d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        newsCnt: article["content"] ?? "--",
        newsDesc: article["description"] ?? "--",
        newsHead: article["title"] ?? "--",
        newsUrl: article["url"] ??
            "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
