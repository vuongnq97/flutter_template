// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationParam _$PaginationParamFromJson(Map<String, dynamic> json) =>
    PaginationParam(
      pageNumber: json['pageNumber'] as int? ?? 1,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$PaginationParamToJson(PaginationParam instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
    };

PaginationResult _$PaginationResultFromJson(Map<String, dynamic> json) =>
    PaginationResult(
      objects: json['objects'] as List<dynamic>,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$PaginationResultToJson(PaginationResult instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'totalCount': instance.totalCount,
    };

DataResultModel _$DataResultModelFromJson(Map<String, dynamic> json) =>
    DataResultModel(
      data: json['data'],
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$DataResultModelToJson(DataResultModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
    };
