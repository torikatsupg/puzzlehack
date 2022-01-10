// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'puzzle_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PuzzleStateTearOff {
  const _$PuzzleStateTearOff();

  _PuzzleState call({required List<Cell> tiles}) {
    return _PuzzleState(
      tiles: tiles,
    );
  }
}

/// @nodoc
const $PuzzleState = _$PuzzleStateTearOff();

/// @nodoc
mixin _$PuzzleState {
  List<Cell> get tiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PuzzleStateCopyWith<PuzzleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleStateCopyWith<$Res> {
  factory $PuzzleStateCopyWith(
          PuzzleState value, $Res Function(PuzzleState) then) =
      _$PuzzleStateCopyWithImpl<$Res>;
  $Res call({List<Cell> tiles});
}

/// @nodoc
class _$PuzzleStateCopyWithImpl<$Res> implements $PuzzleStateCopyWith<$Res> {
  _$PuzzleStateCopyWithImpl(this._value, this._then);

  final PuzzleState _value;
  // ignore: unused_field
  final $Res Function(PuzzleState) _then;

  @override
  $Res call({
    Object? tiles = freezed,
  }) {
    return _then(_value.copyWith(
      tiles: tiles == freezed
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<Cell>,
    ));
  }
}

/// @nodoc
abstract class _$PuzzleStateCopyWith<$Res>
    implements $PuzzleStateCopyWith<$Res> {
  factory _$PuzzleStateCopyWith(
          _PuzzleState value, $Res Function(_PuzzleState) then) =
      __$PuzzleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Cell> tiles});
}

/// @nodoc
class __$PuzzleStateCopyWithImpl<$Res> extends _$PuzzleStateCopyWithImpl<$Res>
    implements _$PuzzleStateCopyWith<$Res> {
  __$PuzzleStateCopyWithImpl(
      _PuzzleState _value, $Res Function(_PuzzleState) _then)
      : super(_value, (v) => _then(v as _PuzzleState));

  @override
  _PuzzleState get _value => super._value as _PuzzleState;

  @override
  $Res call({
    Object? tiles = freezed,
  }) {
    return _then(_PuzzleState(
      tiles: tiles == freezed
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<Cell>,
    ));
  }
}

/// @nodoc

class _$_PuzzleState extends _PuzzleState {
  _$_PuzzleState({required this.tiles}) : super._();

  @override
  final List<Cell> tiles;

  @override
  String toString() {
    return 'PuzzleState(tiles: $tiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PuzzleState &&
            const DeepCollectionEquality().equals(other.tiles, tiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tiles));

  @JsonKey(ignore: true)
  @override
  _$PuzzleStateCopyWith<_PuzzleState> get copyWith =>
      __$PuzzleStateCopyWithImpl<_PuzzleState>(this, _$identity);
}

abstract class _PuzzleState extends PuzzleState {
  factory _PuzzleState({required List<Cell> tiles}) = _$_PuzzleState;
  _PuzzleState._() : super._();

  @override
  List<Cell> get tiles;
  @override
  @JsonKey(ignore: true)
  _$PuzzleStateCopyWith<_PuzzleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CellTearOff {
  const _$CellTearOff();

  Space space() {
    return Space();
  }

  Tile tile({required int number}) {
    return Tile(
      number: number,
    );
  }
}

/// @nodoc
const $Cell = _$CellTearOff();

/// @nodoc
mixin _$Cell {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() space,
    required TResult Function(int number) tile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Space value) space,
    required TResult Function(Tile value) tile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res>;
}

/// @nodoc
class _$CellCopyWithImpl<$Res> implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  final Cell _value;
  // ignore: unused_field
  final $Res Function(Cell) _then;
}

/// @nodoc
abstract class $SpaceCopyWith<$Res> {
  factory $SpaceCopyWith(Space value, $Res Function(Space) then) =
      _$SpaceCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpaceCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res>
    implements $SpaceCopyWith<$Res> {
  _$SpaceCopyWithImpl(Space _value, $Res Function(Space) _then)
      : super(_value, (v) => _then(v as Space));

  @override
  Space get _value => super._value as Space;
}

/// @nodoc

class _$Space extends Space {
  _$Space() : super._();

  @override
  String toString() {
    return 'Cell.space()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Space);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() space,
    required TResult Function(int number) tile,
  }) {
    return space();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
  }) {
    return space?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Space value) space,
    required TResult Function(Tile value) tile,
  }) {
    return space(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
  }) {
    return space?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space(this);
    }
    return orElse();
  }
}

abstract class Space extends Cell {
  factory Space() = _$Space;
  Space._() : super._();
}

/// @nodoc
abstract class $TileCopyWith<$Res> {
  factory $TileCopyWith(Tile value, $Res Function(Tile) then) =
      _$TileCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$TileCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res>
    implements $TileCopyWith<$Res> {
  _$TileCopyWithImpl(Tile _value, $Res Function(Tile) _then)
      : super(_value, (v) => _then(v as Tile));

  @override
  Tile get _value => super._value as Tile;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(Tile(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Tile extends Tile {
  _$Tile({required this.number}) : super._();

  @override
  final int number;

  @override
  String toString() {
    return 'Cell.tile(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tile &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  $TileCopyWith<Tile> get copyWith =>
      _$TileCopyWithImpl<Tile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() space,
    required TResult Function(int number) tile,
  }) {
    return tile(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
  }) {
    return tile?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? space,
    TResult Function(int number)? tile,
    required TResult orElse(),
  }) {
    if (tile != null) {
      return tile(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Space value) space,
    required TResult Function(Tile value) tile,
  }) {
    return tile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
  }) {
    return tile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Space value)? space,
    TResult Function(Tile value)? tile,
    required TResult orElse(),
  }) {
    if (tile != null) {
      return tile(this);
    }
    return orElse();
  }
}

abstract class Tile extends Cell {
  factory Tile({required int number}) = _$Tile;
  Tile._() : super._();

  int get number;
  @JsonKey(ignore: true)
  $TileCopyWith<Tile> get copyWith => throw _privateConstructorUsedError;
}
