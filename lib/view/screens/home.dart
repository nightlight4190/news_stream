import 'package:flutter/material.dart';
import 'package:news_stream/controller/fetchNews.dart';
import 'package:news_stream/view/screens/widgets/newsContainer.dart';
import 'package:news_stream/view/utilis/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News Stream",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: secondaryColor,
          ),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: PageController(
          initialPage: 0,
        ),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsContainer(
            imageUrl:
                "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            newsHead: 'Nepali New Year',
            newsDesc:
                """It is a solar calendar and based on ancient Hindu traditions. It gets its name and starting date from the legendary king Vikramaditya of Ujjain. Each year begins on the first day of the month Baisakh, which usually falls on April 13th or 14th in the western calendar.The Bikram Sambat calendar is mostly used in Nepal and India but some other countries also use it. 
                   """,
            newsUrl:
                "https://www.officeholidays.com/holidays/nepal/nepali-new-year",
          );
        },
      ),
    );
  }
}
