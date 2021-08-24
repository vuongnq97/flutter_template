import 'package:json_annotation/json_annotation.dart';

part 'response.model.g.dart';

@JsonSerializable()
class PaginationParam {
  int pageNumber;
  int pageSize;

  PaginationParam({this.pageNumber = 1, this.pageSize = 10});

  factory PaginationParam.fromJson(Map<String, dynamic> json) => _$PaginationParamFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationParamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginationResult {
  List<dynamic> objects;
  int totalCount;

  PaginationResult({required this.objects, required this.totalCount});

  factory PaginationResult.fromJson(Map<String, dynamic> json) => _$PaginationResultFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationResultToJson(this);
}

@JsonSerializable()
class DataResultModel {
  dynamic data;
  int totalCount;

  DataResultModel({required this.data, required this.totalCount});

  factory DataResultModel.fromJson(Map<String, dynamic> json) => _$DataResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataResultModelToJson(this);
}
