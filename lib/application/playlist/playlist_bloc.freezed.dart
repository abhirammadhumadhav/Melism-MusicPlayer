// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
          PlaylistEvent value, $Res Function(PlaylistEvent) then) =
      _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchplaylistsongsCopyWith<$Res> {
  factory _$$FetchplaylistsongsCopyWith(_$Fetchplaylistsongs value,
          $Res Function(_$Fetchplaylistsongs) then) =
      __$$FetchplaylistsongsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchplaylistsongsCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$Fetchplaylistsongs>
    implements _$$FetchplaylistsongsCopyWith<$Res> {
  __$$FetchplaylistsongsCopyWithImpl(
      _$Fetchplaylistsongs _value, $Res Function(_$Fetchplaylistsongs) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Fetchplaylistsongs implements Fetchplaylistsongs {
  const _$Fetchplaylistsongs();

  @override
  String toString() {
    return 'PlaylistEvent.fetchplaylistsongs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetchplaylistsongs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) {
    return fetchplaylistsongs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) {
    return fetchplaylistsongs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (fetchplaylistsongs != null) {
      return fetchplaylistsongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) {
    return fetchplaylistsongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) {
    return fetchplaylistsongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (fetchplaylistsongs != null) {
      return fetchplaylistsongs(this);
    }
    return orElse();
  }
}

abstract class Fetchplaylistsongs implements PlaylistEvent {
  const factory Fetchplaylistsongs() = _$Fetchplaylistsongs;
}

/// @nodoc
abstract class _$$CreatePlayListCopyWith<$Res> {
  factory _$$CreatePlayListCopyWith(
          _$CreatePlayList value, $Res Function(_$CreatePlayList) then) =
      __$$CreatePlayListCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistname});
}

/// @nodoc
class __$$CreatePlayListCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$CreatePlayList>
    implements _$$CreatePlayListCopyWith<$Res> {
  __$$CreatePlayListCopyWithImpl(
      _$CreatePlayList _value, $Res Function(_$CreatePlayList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistname = null,
  }) {
    return _then(_$CreatePlayList(
      playlistname: null == playlistname
          ? _value.playlistname
          : playlistname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePlayList implements CreatePlayList {
  const _$CreatePlayList({required this.playlistname});

  @override
  final String playlistname;

  @override
  String toString() {
    return 'PlaylistEvent.createPlayList(playlistname: $playlistname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlayList &&
            (identical(other.playlistname, playlistname) ||
                other.playlistname == playlistname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlayListCopyWith<_$CreatePlayList> get copyWith =>
      __$$CreatePlayListCopyWithImpl<_$CreatePlayList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) {
    return createPlayList(playlistname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) {
    return createPlayList?.call(playlistname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (createPlayList != null) {
      return createPlayList(playlistname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) {
    return createPlayList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) {
    return createPlayList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (createPlayList != null) {
      return createPlayList(this);
    }
    return orElse();
  }
}

abstract class CreatePlayList implements PlaylistEvent {
  const factory CreatePlayList({required final String playlistname}) =
      _$CreatePlayList;

  String get playlistname;
  @JsonKey(ignore: true)
  _$$CreatePlayListCopyWith<_$CreatePlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteplaylistCopyWith<$Res> {
  factory _$$DeleteplaylistCopyWith(
          _$Deleteplaylist value, $Res Function(_$Deleteplaylist) then) =
      __$$DeleteplaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({int playlistindex});
}

/// @nodoc
class __$$DeleteplaylistCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$Deleteplaylist>
    implements _$$DeleteplaylistCopyWith<$Res> {
  __$$DeleteplaylistCopyWithImpl(
      _$Deleteplaylist _value, $Res Function(_$Deleteplaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistindex = null,
  }) {
    return _then(_$Deleteplaylist(
      playlistindex: null == playlistindex
          ? _value.playlistindex
          : playlistindex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Deleteplaylist implements Deleteplaylist {
  const _$Deleteplaylist({required this.playlistindex});

  @override
  final int playlistindex;

  @override
  String toString() {
    return 'PlaylistEvent.deleteplaylist(playlistindex: $playlistindex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleteplaylist &&
            (identical(other.playlistindex, playlistindex) ||
                other.playlistindex == playlistindex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistindex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteplaylistCopyWith<_$Deleteplaylist> get copyWith =>
      __$$DeleteplaylistCopyWithImpl<_$Deleteplaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) {
    return deleteplaylist(playlistindex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) {
    return deleteplaylist?.call(playlistindex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (deleteplaylist != null) {
      return deleteplaylist(playlistindex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) {
    return deleteplaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) {
    return deleteplaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (deleteplaylist != null) {
      return deleteplaylist(this);
    }
    return orElse();
  }
}

abstract class Deleteplaylist implements PlaylistEvent {
  const factory Deleteplaylist({required final int playlistindex}) =
      _$Deleteplaylist;

  int get playlistindex;
  @JsonKey(ignore: true)
  _$$DeleteplaylistCopyWith<_$Deleteplaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddplaylistsongsCopyWith<$Res> {
  factory _$$AddplaylistsongsCopyWith(
          _$Addplaylistsongs value, $Res Function(_$Addplaylistsongs) then) =
      __$$AddplaylistsongsCopyWithImpl<$Res>;
  @useResult
  $Res call({int playlistindex, Songs songsname});
}

/// @nodoc
class __$$AddplaylistsongsCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$Addplaylistsongs>
    implements _$$AddplaylistsongsCopyWith<$Res> {
  __$$AddplaylistsongsCopyWithImpl(
      _$Addplaylistsongs _value, $Res Function(_$Addplaylistsongs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistindex = null,
    Object? songsname = null,
  }) {
    return _then(_$Addplaylistsongs(
      playlistindex: null == playlistindex
          ? _value.playlistindex
          : playlistindex // ignore: cast_nullable_to_non_nullable
              as int,
      songsname: null == songsname
          ? _value.songsname
          : songsname // ignore: cast_nullable_to_non_nullable
              as Songs,
    ));
  }
}

/// @nodoc

class _$Addplaylistsongs implements Addplaylistsongs {
  _$Addplaylistsongs({required this.playlistindex, required this.songsname});

  @override
  final int playlistindex;
  @override
  final Songs songsname;

  @override
  String toString() {
    return 'PlaylistEvent.addplaylistsongs(playlistindex: $playlistindex, songsname: $songsname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Addplaylistsongs &&
            (identical(other.playlistindex, playlistindex) ||
                other.playlistindex == playlistindex) &&
            (identical(other.songsname, songsname) ||
                other.songsname == songsname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistindex, songsname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddplaylistsongsCopyWith<_$Addplaylistsongs> get copyWith =>
      __$$AddplaylistsongsCopyWithImpl<_$Addplaylistsongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) {
    return addplaylistsongs(playlistindex, songsname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) {
    return addplaylistsongs?.call(playlistindex, songsname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (addplaylistsongs != null) {
      return addplaylistsongs(playlistindex, songsname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) {
    return addplaylistsongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) {
    return addplaylistsongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (addplaylistsongs != null) {
      return addplaylistsongs(this);
    }
    return orElse();
  }
}

abstract class Addplaylistsongs implements PlaylistEvent {
  factory Addplaylistsongs(
      {required final int playlistindex,
      required final Songs songsname}) = _$Addplaylistsongs;

  int get playlistindex;
  Songs get songsname;
  @JsonKey(ignore: true)
  _$$AddplaylistsongsCopyWith<_$Addplaylistsongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteplaylistsongsCopyWith<$Res> {
  factory _$$DeleteplaylistsongsCopyWith(_$Deleteplaylistsongs value,
          $Res Function(_$Deleteplaylistsongs) then) =
      __$$DeleteplaylistsongsCopyWithImpl<$Res>;
  @useResult
  $Res call({int playlistindex, int songindex});
}

/// @nodoc
class __$$DeleteplaylistsongsCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$Deleteplaylistsongs>
    implements _$$DeleteplaylistsongsCopyWith<$Res> {
  __$$DeleteplaylistsongsCopyWithImpl(
      _$Deleteplaylistsongs _value, $Res Function(_$Deleteplaylistsongs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistindex = null,
    Object? songindex = null,
  }) {
    return _then(_$Deleteplaylistsongs(
      playlistindex: null == playlistindex
          ? _value.playlistindex
          : playlistindex // ignore: cast_nullable_to_non_nullable
              as int,
      songindex: null == songindex
          ? _value.songindex
          : songindex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Deleteplaylistsongs implements Deleteplaylistsongs {
  const _$Deleteplaylistsongs(
      {required this.playlistindex, required this.songindex});

  @override
  final int playlistindex;
  @override
  final int songindex;

  @override
  String toString() {
    return 'PlaylistEvent.deleteplaylistsongs(playlistindex: $playlistindex, songindex: $songindex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleteplaylistsongs &&
            (identical(other.playlistindex, playlistindex) ||
                other.playlistindex == playlistindex) &&
            (identical(other.songindex, songindex) ||
                other.songindex == songindex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistindex, songindex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteplaylistsongsCopyWith<_$Deleteplaylistsongs> get copyWith =>
      __$$DeleteplaylistsongsCopyWithImpl<_$Deleteplaylistsongs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchplaylistsongs,
    required TResult Function(String playlistname) createPlayList,
    required TResult Function(int playlistindex) deleteplaylist,
    required TResult Function(int playlistindex, Songs songsname)
        addplaylistsongs,
    required TResult Function(int playlistindex, int songindex)
        deleteplaylistsongs,
  }) {
    return deleteplaylistsongs(playlistindex, songindex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchplaylistsongs,
    TResult? Function(String playlistname)? createPlayList,
    TResult? Function(int playlistindex)? deleteplaylist,
    TResult? Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult? Function(int playlistindex, int songindex)? deleteplaylistsongs,
  }) {
    return deleteplaylistsongs?.call(playlistindex, songindex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchplaylistsongs,
    TResult Function(String playlistname)? createPlayList,
    TResult Function(int playlistindex)? deleteplaylist,
    TResult Function(int playlistindex, Songs songsname)? addplaylistsongs,
    TResult Function(int playlistindex, int songindex)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (deleteplaylistsongs != null) {
      return deleteplaylistsongs(playlistindex, songindex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetchplaylistsongs value) fetchplaylistsongs,
    required TResult Function(CreatePlayList value) createPlayList,
    required TResult Function(Deleteplaylist value) deleteplaylist,
    required TResult Function(Addplaylistsongs value) addplaylistsongs,
    required TResult Function(Deleteplaylistsongs value) deleteplaylistsongs,
  }) {
    return deleteplaylistsongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult? Function(CreatePlayList value)? createPlayList,
    TResult? Function(Deleteplaylist value)? deleteplaylist,
    TResult? Function(Addplaylistsongs value)? addplaylistsongs,
    TResult? Function(Deleteplaylistsongs value)? deleteplaylistsongs,
  }) {
    return deleteplaylistsongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetchplaylistsongs value)? fetchplaylistsongs,
    TResult Function(CreatePlayList value)? createPlayList,
    TResult Function(Deleteplaylist value)? deleteplaylist,
    TResult Function(Addplaylistsongs value)? addplaylistsongs,
    TResult Function(Deleteplaylistsongs value)? deleteplaylistsongs,
    required TResult orElse(),
  }) {
    if (deleteplaylistsongs != null) {
      return deleteplaylistsongs(this);
    }
    return orElse();
  }
}

abstract class Deleteplaylistsongs implements PlaylistEvent {
  const factory Deleteplaylistsongs(
      {required final int playlistindex,
      required final int songindex}) = _$Deleteplaylistsongs;

  int get playlistindex;
  int get songindex;
  @JsonKey(ignore: true)
  _$$DeleteplaylistsongsCopyWith<_$Deleteplaylistsongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playlistinitial,
    required TResult Function(List<PlayListSongs> playlistlist) displayplaylis,
    required TResult Function(List<Songs> plalistlist) displayplaylistedscreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playlistinitial,
    TResult? Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult? Function(List<Songs> plalistlist)? displayplaylistedscreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playlistinitial,
    TResult Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult Function(List<Songs> plalistlist)? displayplaylistedscreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playlistinitial value) playlistinitial,
    required TResult Function(Displayplaylis value) displayplaylis,
    required TResult Function(Displayplaylistedscreen value)
        displayplaylistedscreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playlistinitial value)? playlistinitial,
    TResult? Function(Displayplaylis value)? displayplaylis,
    TResult? Function(Displayplaylistedscreen value)? displayplaylistedscreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playlistinitial value)? playlistinitial,
    TResult Function(Displayplaylis value)? displayplaylis,
    TResult Function(Displayplaylistedscreen value)? displayplaylistedscreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaylistinitialCopyWith<$Res> {
  factory _$$PlaylistinitialCopyWith(
          _$Playlistinitial value, $Res Function(_$Playlistinitial) then) =
      __$$PlaylistinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistinitialCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$Playlistinitial>
    implements _$$PlaylistinitialCopyWith<$Res> {
  __$$PlaylistinitialCopyWithImpl(
      _$Playlistinitial _value, $Res Function(_$Playlistinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Playlistinitial implements Playlistinitial {
  const _$Playlistinitial();

  @override
  String toString() {
    return 'PlaylistState.playlistinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Playlistinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playlistinitial,
    required TResult Function(List<PlayListSongs> playlistlist) displayplaylis,
    required TResult Function(List<Songs> plalistlist) displayplaylistedscreen,
  }) {
    return playlistinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playlistinitial,
    TResult? Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult? Function(List<Songs> plalistlist)? displayplaylistedscreen,
  }) {
    return playlistinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playlistinitial,
    TResult Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult Function(List<Songs> plalistlist)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (playlistinitial != null) {
      return playlistinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playlistinitial value) playlistinitial,
    required TResult Function(Displayplaylis value) displayplaylis,
    required TResult Function(Displayplaylistedscreen value)
        displayplaylistedscreen,
  }) {
    return playlistinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playlistinitial value)? playlistinitial,
    TResult? Function(Displayplaylis value)? displayplaylis,
    TResult? Function(Displayplaylistedscreen value)? displayplaylistedscreen,
  }) {
    return playlistinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playlistinitial value)? playlistinitial,
    TResult Function(Displayplaylis value)? displayplaylis,
    TResult Function(Displayplaylistedscreen value)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (playlistinitial != null) {
      return playlistinitial(this);
    }
    return orElse();
  }
}

abstract class Playlistinitial implements PlaylistState {
  const factory Playlistinitial() = _$Playlistinitial;
}

/// @nodoc
abstract class _$$DisplayplaylisCopyWith<$Res> {
  factory _$$DisplayplaylisCopyWith(
          _$Displayplaylis value, $Res Function(_$Displayplaylis) then) =
      __$$DisplayplaylisCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlayListSongs> playlistlist});
}

/// @nodoc
class __$$DisplayplaylisCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$Displayplaylis>
    implements _$$DisplayplaylisCopyWith<$Res> {
  __$$DisplayplaylisCopyWithImpl(
      _$Displayplaylis _value, $Res Function(_$Displayplaylis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistlist = null,
  }) {
    return _then(_$Displayplaylis(
      playlistlist: null == playlistlist
          ? _value._playlistlist
          : playlistlist // ignore: cast_nullable_to_non_nullable
              as List<PlayListSongs>,
    ));
  }
}

/// @nodoc

class _$Displayplaylis implements Displayplaylis {
  const _$Displayplaylis({required final List<PlayListSongs> playlistlist})
      : _playlistlist = playlistlist;

  final List<PlayListSongs> _playlistlist;
  @override
  List<PlayListSongs> get playlistlist {
    if (_playlistlist is EqualUnmodifiableListView) return _playlistlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistlist);
  }

  @override
  String toString() {
    return 'PlaylistState.displayplaylis(playlistlist: $playlistlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Displayplaylis &&
            const DeepCollectionEquality()
                .equals(other._playlistlist, _playlistlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playlistlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayplaylisCopyWith<_$Displayplaylis> get copyWith =>
      __$$DisplayplaylisCopyWithImpl<_$Displayplaylis>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playlistinitial,
    required TResult Function(List<PlayListSongs> playlistlist) displayplaylis,
    required TResult Function(List<Songs> plalistlist) displayplaylistedscreen,
  }) {
    return displayplaylis(playlistlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playlistinitial,
    TResult? Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult? Function(List<Songs> plalistlist)? displayplaylistedscreen,
  }) {
    return displayplaylis?.call(playlistlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playlistinitial,
    TResult Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult Function(List<Songs> plalistlist)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (displayplaylis != null) {
      return displayplaylis(playlistlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playlistinitial value) playlistinitial,
    required TResult Function(Displayplaylis value) displayplaylis,
    required TResult Function(Displayplaylistedscreen value)
        displayplaylistedscreen,
  }) {
    return displayplaylis(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playlistinitial value)? playlistinitial,
    TResult? Function(Displayplaylis value)? displayplaylis,
    TResult? Function(Displayplaylistedscreen value)? displayplaylistedscreen,
  }) {
    return displayplaylis?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playlistinitial value)? playlistinitial,
    TResult Function(Displayplaylis value)? displayplaylis,
    TResult Function(Displayplaylistedscreen value)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (displayplaylis != null) {
      return displayplaylis(this);
    }
    return orElse();
  }
}

abstract class Displayplaylis implements PlaylistState {
  const factory Displayplaylis(
      {required final List<PlayListSongs> playlistlist}) = _$Displayplaylis;

  List<PlayListSongs> get playlistlist;
  @JsonKey(ignore: true)
  _$$DisplayplaylisCopyWith<_$Displayplaylis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayplaylistedscreenCopyWith<$Res> {
  factory _$$DisplayplaylistedscreenCopyWith(_$Displayplaylistedscreen value,
          $Res Function(_$Displayplaylistedscreen) then) =
      __$$DisplayplaylistedscreenCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Songs> plalistlist});
}

/// @nodoc
class __$$DisplayplaylistedscreenCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$Displayplaylistedscreen>
    implements _$$DisplayplaylistedscreenCopyWith<$Res> {
  __$$DisplayplaylistedscreenCopyWithImpl(_$Displayplaylistedscreen _value,
      $Res Function(_$Displayplaylistedscreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plalistlist = null,
  }) {
    return _then(_$Displayplaylistedscreen(
      plalistlist: null == plalistlist
          ? _value._plalistlist
          : plalistlist // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$Displayplaylistedscreen implements Displayplaylistedscreen {
  const _$Displayplaylistedscreen({required final List<Songs> plalistlist})
      : _plalistlist = plalistlist;

  final List<Songs> _plalistlist;
  @override
  List<Songs> get plalistlist {
    if (_plalistlist is EqualUnmodifiableListView) return _plalistlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plalistlist);
  }

  @override
  String toString() {
    return 'PlaylistState.displayplaylistedscreen(plalistlist: $plalistlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Displayplaylistedscreen &&
            const DeepCollectionEquality()
                .equals(other._plalistlist, _plalistlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_plalistlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayplaylistedscreenCopyWith<_$Displayplaylistedscreen> get copyWith =>
      __$$DisplayplaylistedscreenCopyWithImpl<_$Displayplaylistedscreen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playlistinitial,
    required TResult Function(List<PlayListSongs> playlistlist) displayplaylis,
    required TResult Function(List<Songs> plalistlist) displayplaylistedscreen,
  }) {
    return displayplaylistedscreen(plalistlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playlistinitial,
    TResult? Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult? Function(List<Songs> plalistlist)? displayplaylistedscreen,
  }) {
    return displayplaylistedscreen?.call(plalistlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playlistinitial,
    TResult Function(List<PlayListSongs> playlistlist)? displayplaylis,
    TResult Function(List<Songs> plalistlist)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (displayplaylistedscreen != null) {
      return displayplaylistedscreen(plalistlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playlistinitial value) playlistinitial,
    required TResult Function(Displayplaylis value) displayplaylis,
    required TResult Function(Displayplaylistedscreen value)
        displayplaylistedscreen,
  }) {
    return displayplaylistedscreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playlistinitial value)? playlistinitial,
    TResult? Function(Displayplaylis value)? displayplaylis,
    TResult? Function(Displayplaylistedscreen value)? displayplaylistedscreen,
  }) {
    return displayplaylistedscreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playlistinitial value)? playlistinitial,
    TResult Function(Displayplaylis value)? displayplaylis,
    TResult Function(Displayplaylistedscreen value)? displayplaylistedscreen,
    required TResult orElse(),
  }) {
    if (displayplaylistedscreen != null) {
      return displayplaylistedscreen(this);
    }
    return orElse();
  }
}

abstract class Displayplaylistedscreen implements PlaylistState {
  const factory Displayplaylistedscreen(
      {required final List<Songs> plalistlist}) = _$Displayplaylistedscreen;

  List<Songs> get plalistlist;
  @JsonKey(ignore: true)
  _$$DisplayplaylistedscreenCopyWith<_$Displayplaylistedscreen> get copyWith =>
      throw _privateConstructorUsedError;
}
