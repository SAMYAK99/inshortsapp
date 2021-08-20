import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  child: Container(
                    child: Image.network(
                      fnews.newsImage,
                      fit: BoxFit.cover,
                    ),
                  )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fnews.date,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      Text(
                        fnews.title,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        fnews.content,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: MaterialButton(
                            elevation: 0,
                            color: Colors.redAccent,
                            child: Text(
                              'Read Full News',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              )
            ],
          ));
        });
  }
}
