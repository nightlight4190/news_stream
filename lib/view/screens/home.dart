import 'package:flutter/material.dart';

import 'package:news_stream/controller/fetchNews.dart';
import 'package:news_stream/view/screens/widgets/newsContainer.dart';

import '../../model/newsArt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News Stream',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.teal,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Icon(
            Icons.newspaper,
            size: 30,
            color: Colors.teal,
          ),
        ),
        centerTitle: false,
      ),
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          setState(() {
            isLoading = true;
          });
          GetNews();
        },
        itemBuilder: (context, index) {
          return isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.teal,
                  ),
                )
              : NewsContainer(
                  imgUrl: newsArt.imgUrl,
                  newsCnt: newsArt.newsCnt,
                  newsHead: newsArt.newsHead,
                  newsDes: newsArt.newsDesc,
                  newsUrl: newsArt.newsUrl);
        },
      ),
    );
  }
}
