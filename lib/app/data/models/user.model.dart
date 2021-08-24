import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String name;
  final int role;



  UserModel({
    required this.id,
    required this.name,
    required final this.role,
  });



  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
