// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../api/model/jokes_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokesListResponse _$$_JokesListResponseFromJson(Map<String, dynamic> json) =>
    _$_JokesListResponse(
      currentPage: json['current_page'] as int,
      limit: json['limit'] as int,
      nextPage: json['next_page'] as int,
      previousPage: json['previous_page'] as int,
      totalJokes: json['total_jokes'] as int,
      totalPages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Joke.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JokesListResponseToJson(
        _$_JokesListResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'limit': instance.limit,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
      'total_jokes': instance.totalJokes,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
