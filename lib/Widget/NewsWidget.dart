import 'package:flutter/material.dart';
import 'package:inshortsapp/Model/model.dart';

class NewsWidget extends StatelessWidget {
  final List<NewsData> news;

  NewsWidget({required this.news});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: news.length,
        itemBuilder: (context, index) {
          final fnews = news[index];

          return Container(
              child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  child: ClipRRect(
                    child: Image.network(
                      fnews.newsImage,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fnews.date),
                      Text(fnews.title),
                      Text(fnews.content)
                    ],
                  ),
                ),
              )
            ],
          ));
        });
  }
}
