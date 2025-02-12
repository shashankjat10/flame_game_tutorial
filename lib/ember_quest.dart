import 'package:flame/game.dart';

class EmberQuestGame extends FlameGame{
  EmberQuestGame();

  @override
  Future<void> onLoad() async {
    // Load your game here
    await images.loadAll([
      'block.png',
      'ember.png',
      'ground.png',
      'heart_half.png',
      'heart.png',
      'star.png',
      'water_enemy.png',
    ]);
  }
}