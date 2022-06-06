// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/api/model/joke.g.dart';
part '../../generated/api/model/joke.freezed.dart';

@freezed
class Joke with _$Joke {
  const factory Joke({
    required String id,
    @JsonKey(name: 'joke') required String content,
  }) = _Joke;

  factory Joke.fromJson(Map<String, Object?> json)
  => _$JokeFromJson(json);
}