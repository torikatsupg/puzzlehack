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
              return Column(
                children: [
                  Column(
                    children: List.generate(
                      4,
                      (y) => Row(
                        children: List.generate(
                          4,
                          (x) => Button(
                            x: x,
                            y: y,
                            cell: state.tiles[y][x],
                            onTap: ref.read(puzzleProvider.notifier).tryMove,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Text(state.isCompleted.toString()),
                  )
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
    required this.x,
    required this.y,
    required this.cell,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final int x;
  final int y;
  final Cell cell;
  final void Function(int x, int y) onTap;

  @override
  Widget build(BuildContext context) {
    final _cell = cell;
    if (_cell is Tile) {
      return GestureDetector(
        onTap: () => onTap(x, y),
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
