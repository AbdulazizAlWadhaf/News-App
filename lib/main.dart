import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';

import 'views/home_view.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp( NewsApp());
}

final dio = Dio();



class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),

    );
  }
}