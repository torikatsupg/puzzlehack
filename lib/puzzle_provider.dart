import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle_provider.freezed.dart';

final puzzleProvider = StateNotifierProvider<PuzzleStateNotifier, PuzzleState>(
    (ref) => PuzzleStateNotifier());

final _initTiles = [
  Cell.tile(number: 1),
  Cell.tile(number: 2),
  Cell.tile(number: 3),
  Cell.tile(number: 4),
  Cell.tile(number: 5),
  Cell.tile(number: 6),
  Cell.tile(number: 7),
  Cell.tile(number: 8),
  Cell.tile(number: 9),
  Cell.tile(number: 10),
  Cell.tile(number: 11),
  Cell.tile(number: 12),
  Cell.tile(number: 13),
  Cell.tile(number: 14),
  Cell.tile(number: 15),
  Cell.space()
];

/// 00 01 02 03
/// 04 05 06 07
/// 08 09 10 11
/// 12 13 14 15
class PuzzleStateNotifier extends StateNotifier<PuzzleState> {
  PuzzleStateNotifier() : super(PuzzleState(tiles: _initTiles));

  void tryMove(int target) => state = state.tryMove(target);
}

@freezed
class PuzzleState with _$PuzzleState {
  factory PuzzleState({required List<Cell> tiles}) = _PuzzleState;
  PuzzleState._();

  PuzzleState tryMove(int target) {
    final targetTile = tiles[target];
    final top = _top(target);
    final bottom = _bottom(target);
    final left = _left(target);
    final right = _right(target);
    print('============');
    print(target);
    print(top);
    print(bottom);
    print(left);
    print(right);

    if (_canSwap(targetTile, top)) {
      return _swap(target, target - 4);
    } else if (_canSwap(targetTile, bottom)) {
      return _swap(target, target + 4);
    } else if (_canSwap(targetTile, left)) {
      return _swap(target, target - 1);
    } else if (_canSwap(targetTile, right)) {
      return _swap(target, target + 1);
    } else {
      return this;
    }
  }

  Cell? _top(target) => _isTopLine(target) ? null : tiles[target - 4];
  Cell? _bottom(target) => _isBottomLine(target) ? null : tiles[target + 4];
  Cell? _right(target) => _isRightLine(target) ? null : tiles[target + 1];
  Cell? _left(target) => _isLeftLine(target) ? null : tiles[target - 1];

  bool _isTopLine(int target) => target <= 3;
  bool _isBottomLine(int target) => target >= 12;
  bool _isRightLine(int target) => (target + 1) % 4 == 0;
  bool _isLeftLine(int target) => target % 4 == 0;

  bool _canSwap(Cell? from, Cell? to) => from is Tile && to is Space;

  PuzzleState _swap(int from, int to) {
    final tmp = [...tiles];
    tmp.swap(from, to);
    return copyWith(tiles: tmp);
  }
}

@freezed
class Cell with _$Cell {
  factory Cell.space() = Space;
  factory Cell.tile({required int number}) = Tile;

  Cell._();
}
