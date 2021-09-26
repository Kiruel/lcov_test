import 'package:lcov_test/features/home/data/datasources/home_client.dart';
import 'package:lcov_test/features/home/domain/entities/article.dart';

import '../../../../core/errors/exceptions.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<List<Article>> getArticles();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({
    required this.homeClient,
  });

  HomeClient homeClient;

  @override
  Future<List<Article>> getArticles() async {
    try {
      return await homeClient.getArticles();
    } on DioError catch (_) {
      throw ServerException();
    }
  }
}
