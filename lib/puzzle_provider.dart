import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle_provider.freezed.dart';

final puzzleProvider = StateNotifierProvider<PuzzleStateNotifier, PuzzleState>(
    (ref) => PuzzleStateNotifier());

/// 00 01 02 03
/// 04 05 06 07
/// 08 09 10 11
/// 12 13 14 15
class PuzzleStateNotifier extends StateNotifier<PuzzleState> {
  PuzzleStateNotifier() : super(PuzzleState.init());

  void tryMove(int x, int y) => state = state.tryMove(x, y);
}

@freezed
class PuzzleState with _$PuzzleState {
  factory PuzzleState({required List<List<Cell>> tiles}) = _PuzzleState;
  factory PuzzleState.init() {
    final list = List.generate(
      _width * _height,
      (index) => index == 15 ? Cell.space() : Cell.tile(number: index + 1),
    )..shuffle();
    return PuzzleState(
      tiles: List.generate(
        _width,
        (x) => List.generate(_height, (y) => list.removeAt(0)),
      ),
    );
  }

  PuzzleState._();

  static const _width = 4;
  static const _height = 4;

  bool _hasTop(y) => y - 1 >= 0;
  bool _hasBottom(y) => y + 1 <= 3;
  bool _hasRight(x) => x + 1 <= 3;
  bool _hasLeft(x) => x - 1 >= 0;

  bool get isCompleted => List.generate(
        _width,
        (x) => List.generate(
          _height,
          (y) {
            final index = 1 + x + 4 * y;
            return tiles[y][x].map(
              tile: (tile) {
                return tile.number == index;
              },
              space: (_) => index == 16,
            );
          },
        ).every((e) => e),
      ).every((e) => e);

  MoveDirection getMoveDirection(int x, int y) {
    if (_hasTop(y) && tiles[y - 1][x] is Space) {
      return MoveDirection.top;
    } else if (_hasRight(x) && tiles[y][x + 1] is Space) {
      return MoveDirection.right;
    } else if (_hasBottom(y) && tiles[y + 1][x] is Space) {
      return MoveDirection.bottom;
    } else if (_hasLeft(x) && tiles[y][x - 1] is Space) {
      return MoveDirection.left;
    }
    return MoveDirection.none;
  }

  PuzzleState tryMove(int x, int y) {
    final direction = getMoveDirection(x, y);
    switch (direction) {
      case MoveDirection.top:
        tiles[y - 1][x] = tiles[y][x];
        tiles[y][x] = Space();
        break;
      case MoveDirection.right:
        tiles[y][x + 1] = tiles[y][x];
        tiles[y][x] = Space();
        break;
      case MoveDirection.bottom:
        tiles[y + 1][x] = tiles[y][x];
        tiles[y][x] = Space();
        break;
      case MoveDirection.left:
        tiles[y][x - 1] = tiles[y][x];
        tiles[y][x] = Space();
        break;
      case MoveDirection.none:
        break;
    }
    return copyWith(tiles: tiles);
  }
}

@freezed
class Cell with _$Cell {
  factory Cell.space() = Space;
  factory Cell.tile({required int number}) = Tile;

  Cell._();
}

enum MoveDirection { top, right, bottom, left, none }
