import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzlehack/puzzle_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Consumer(
            builder: (context, ref, _) {
              final state = ref.watch(puzzleProvider);
              final onTap = ref.read(puzzleProvider.notifier).tryMove;
              return Column(
                children: [
                  Row(
                    children: [
                      Button(index: 0, cell: state.tiles[0], onTap: onTap),
                      Button(index: 1, cell: state.tiles[1], onTap: onTap),
                      Button(index: 2, cell: state.tiles[2], onTap: onTap),
                      Button(index: 3, cell: state.tiles[3], onTap: onTap),
                    ],
                  ),
                  Row(
                    children: [
                      Button(index: 4, cell: state.tiles[4], onTap: onTap),
                      Button(index: 5, cell: state.tiles[5], onTap: onTap),
                      Button(index: 6, cell: state.tiles[6], onTap: onTap),
                      Button(index: 7, cell: state.tiles[7], onTap: onTap),
                    ],
                  ),
                  Row(
                    children: [
                      Button(index: 8, cell: state.tiles[8], onTap: onTap),
                      Button(index: 9, cell: state.tiles[9], onTap: onTap),
                      Button(index: 10, cell: state.tiles[10], onTap: onTap),
                      Button(index: 11, cell: state.tiles[11], onTap: onTap),
                    ],
                  ),
                  Row(
                    children: [
                      Button(index: 12, cell: state.tiles[12], onTap: onTap),
                      Button(index: 13, cell: state.tiles[13], onTap: onTap),
                      Button(index: 14, cell: state.tiles[14], onTap: onTap),
                      Button(index: 15, cell: state.tiles[15], onTap: onTap),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    required this.index,
    required this.cell,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final int index;
  final Cell cell;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final _cell = cell;
    if (_cell is Tile) {
      return GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          child: Center(
            child: Text(_cell.number.toString()),
          ),
          height: 50,
          width: 50,
          color: Colors.amber[50],
        ),
      );
    } else {
      return const SizedBox.square(dimension: 50);
    }
  }
}
