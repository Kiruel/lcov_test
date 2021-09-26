import 'package:flutter_test/flutter_test.dart';
import 'package:lcov_test/features/home/domain/entities/article.dart';

import '../../../../fixtures_reader.dart';

void main() {

  Article tArticle = const Article(title: 'My great article');

  test(
    'should return a valid Article when call Article.fromJson',
    () async {
      // arrange
      final Map<String, dynamic> jsonString = 'article.json'.toFixture();
      // act
      final result = Article.fromJson(jsonString);
      // assert
      expect(result, tArticle);
      
    },
  );
  test(
    'should return a JSON map with the proper data when call toJson',
    () async {
      // arrange
      final result = tArticle.toJson();
      // act
      final expectedJsonMap = {
        'title': 'My great article',
      };
      // assert
      expect(result, expectedJsonMap);
    },
  );

}