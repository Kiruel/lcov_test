import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends Equatable{
  final String title;

  const Article({required this.title});

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @override
  List<Object?> get props => [
    title,
  ];
}