import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService(this.dio);

  final Dio dio;

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
  var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6f75bc5cdd5342fd8729b2c9473a4659&category=$category');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList = [];
  /*
    for (var article in articles) {
  articlesList.add(ArticleModel(image: article['urlToImage'], title: article['title'], subTitle: article['description']));
    }
  */
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subTitle: article['description'],
    );
  
    articlesList.add(articleModel);
    
  }
  return articlesList;
} catch (e) {
  return [];
}

  }

  

}