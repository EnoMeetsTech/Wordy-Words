import 'package:flutter/material.dart';
import 'package:wordy_words/utilities/game_provider.dart';
import 'package:wordy_words/widgets/game_board.dart';

import '../widgets/game_struct.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  WorldeGame _game = WorldeGame();
  late String word;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WorldeGame.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "WORDY WORDS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GameKeyboard(_game),
        ],
      ),
    );
  }
}
