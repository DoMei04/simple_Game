import 'package:flutter/material.dart';
import 'package:match_card_game/pages/game_screen.dart';
import 'package:lottie/lottie.dart';

class StartGameScreen extends StatefulWidget {
  const StartGameScreen({super.key});

  @override
  State<StartGameScreen> createState() => _StartGameScreenState();
}

class _StartGameScreenState extends State<StartGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Card Matching Game", // GAME TITLE
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          LottieBuilder.asset(
            "assets/brain_animation.json",
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyFlipCardGame(),
                ),
              );
            },
            child: const Text("Start Game"),
          )
        ],
      ),
    );
  }
}
