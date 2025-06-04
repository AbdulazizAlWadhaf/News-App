import 'package:dio/dio.dart';

class NewsService {
  NewsService(this.dio);

  final Dio dio;

  getNews() async {
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6f75bc5cdd5342fd8729b2c9473a4659&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print(articles);
    for(var article in articles){
      print(article['author']);
    }
  }

  

}