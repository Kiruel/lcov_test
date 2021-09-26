import 'package:dio/dio.dart';
import 'package:lcov_test/features/home/domain/entities/article.dart';
import 'package:retrofit/retrofit.dart';

part 'home_client.g.dart';

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio) = _HomeClient;

  @GET('/articles')
  Future<List<Article>> getArticles();
}