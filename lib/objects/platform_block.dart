import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_game_tutorial/ember_quest.dart';

class PlatformBlock extends SpriteComponent
    with HasGameReference<EmberQuestGame> {
  final Vector2 gridPosition;
  double xOffset;

  PlatformBlock({
    required this.gridPosition,
    required this.xOffset,
  }) : super(size: Vector2.all(64), anchor: Anchor.bottomLeft);

  final Vector2 velocity = Vector2.zero();

  @override
  void onLoad() {
    final platformImage = game.images.fromCache('block.png');
    sprite = Sprite(platformImage);
    position = Vector2(
      (gridPosition.x * size.x) + xOffset,
      game.size.y - (gridPosition.y * size.y),
    );
    add(RectangleHitbox(collisionType: CollisionType.passive));
  }

  @override
  void update(double dt) {
    velocity.x = game.objectSpeed;
    position += velocity * dt;
    if (position.x < -size.x) removeFromParent();
    if (position.x < -size.x || game.health <= 0) {
      removeFromParent();
    }
    super.update(dt);
  }
}
