import 'package:flame/game.dart';
import 'package:flame_game_tutorial/ember_quest.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
    ),
  );
}
