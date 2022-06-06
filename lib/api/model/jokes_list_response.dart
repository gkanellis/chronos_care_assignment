// ignore_for_file: invalid_annotation_target

import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/api/model/jokes_list_response.freezed.dart';
part '../../generated/api/model/jokes_list_response.g.dart';

@freezed
class JokesListResponse with _$JokesListResponse {
  const factory JokesListResponse({
    @JsonKey(name: 'current_page') required int currentPage,
    required int limit,
    @JsonKey(name: 'next_page') required int nextPage,
    @JsonKey(name: 'previous_page') required int previousPage,
    @JsonKey(name: 'total_jokes') required int totalJokes,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<Joke> results,
  }) = _JokesListResponse;

  factory JokesListResponse.fromJson(Map<String, Object?> json) =>
      _$JokesListResponseFromJson(json);
}
