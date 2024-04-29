import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends Equatable {
  const PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return _$PostModelFromJson(json);
  }
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Map<String, dynamic> toJson() {
    return _$PostModelToJson(this);
  }

  @override
  List<Object?> get props => [userId, id];
}
