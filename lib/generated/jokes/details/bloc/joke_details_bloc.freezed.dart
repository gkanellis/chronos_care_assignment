// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../jokes/details/bloc/joke_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeDetailsState {
  bool get isUpVoted => throw _privateConstructorUsedError;

  bool get isDownVoted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeDetailsStateCopyWith<JokeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeDetailsStateCopyWith<$Res> {
  factory $JokeDetailsStateCopyWith(
          JokeDetailsState value, $Res Function(JokeDetailsState) then) =
      _$JokeDetailsStateCopyWithImpl<$Res>;

  $Res call({bool isUpVoted, bool isDownVoted});
}

/// @nodoc
class _$JokeDetailsStateCopyWithImpl<$Res>
    implements $JokeDetailsStateCopyWith<$Res> {
  _$JokeDetailsStateCopyWithImpl(this._value, this._then);

  final JokeDetailsState _value;

  // ignore: unused_field
  final $Res Function(JokeDetailsState) _then;

  @override
  $Res call({
    Object? isUpVoted = freezed,
    Object? isDownVoted = freezed,
  }) {
    return _then(_value.copyWith(
      isUpVoted: isUpVoted == freezed
          ? _value.isUpVoted
          : isUpVoted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownVoted: isDownVoted == freezed
          ? _value.isDownVoted
          : isDownVoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_JokeDetailsStateCopyWith<$Res>
    implements $JokeDetailsStateCopyWith<$Res> {
  factory _$$_JokeDetailsStateCopyWith(
          _$_JokeDetailsState value, $Res Function(_$_JokeDetailsState) then) =
      __$$_JokeDetailsStateCopyWithImpl<$Res>;

  @override
  $Res call({bool isUpVoted, bool isDownVoted});
}

/// @nodoc
class __$$_JokeDetailsStateCopyWithImpl<$Res>
    extends _$JokeDetailsStateCopyWithImpl<$Res>
    implements _$$_JokeDetailsStateCopyWith<$Res> {
  __$$_JokeDetailsStateCopyWithImpl(
      _$_JokeDetailsState _value, $Res Function(_$_JokeDetailsState) _then)
      : super(_value, (v) => _then(v as _$_JokeDetailsState));

  @override
  _$_JokeDetailsState get _value => super._value as _$_JokeDetailsState;

  @override
  $Res call({
    Object? isUpVoted = freezed,
    Object? isDownVoted = freezed,
  }) {
    return _then(_$_JokeDetailsState(
      isUpVoted: isUpVoted == freezed
          ? _value.isUpVoted
          : isUpVoted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownVoted: isDownVoted == freezed
          ? _value.isDownVoted
          : isDownVoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_JokeDetailsState implements _JokeDetailsState {
  _$_JokeDetailsState({required this.isUpVoted, required this.isDownVoted});

  @override
  final bool isUpVoted;
  @override
  final bool isDownVoted;

  @override
  String toString() {
    return 'JokeDetailsState(isUpVoted: $isUpVoted, isDownVoted: $isDownVoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeDetailsState &&
            const DeepCollectionEquality().equals(other.isUpVoted, isUpVoted) &&
            const DeepCollectionEquality()
                .equals(other.isDownVoted, isDownVoted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUpVoted),
      const DeepCollectionEquality().hash(isDownVoted));

  @JsonKey(ignore: true)
  @override
  _$$_JokeDetailsStateCopyWith<_$_JokeDetailsState> get copyWith =>
      __$$_JokeDetailsStateCopyWithImpl<_$_JokeDetailsState>(this, _$identity);
}

abstract class _JokeDetailsState implements JokeDetailsState {
  factory _JokeDetailsState(
      {required final bool isUpVoted,
      required final bool isDownVoted}) = _$_JokeDetailsState;

  @override
  bool get isUpVoted => throw _privateConstructorUsedError;

  @override
  bool get isDownVoted => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_JokeDetailsStateCopyWith<_$_JokeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
