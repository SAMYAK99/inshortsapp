import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inshortsapp/Model/model.dart';
import 'package:http/http.dart' as http;
import 'package:inshortsapp/Widget/NewsWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NewsData> _news = [];

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final news = await _fetchAllNews();
    setState(() {
      _news = news;
    });
  }

  String baseURL =
      "https://newsapi.org/v2/top-headlines?country=in&category=business&pageSize=30&apiKey=c389a548804b46509601fc86e1c3f8e1";

  Future<List<NewsData>> _fetchAllNews() async {
    final response = await http.get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      print(list);
      return list.map((movie) => NewsData.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white, body: NewsWidget(news: _news)),
        ));
  }
}
