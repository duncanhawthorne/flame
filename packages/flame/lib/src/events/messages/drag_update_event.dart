import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/gestures.dart';

class DragUpdateEvent(
  final int pointerId,
  super.game,
  DragUpdateDetails details,
) extends DisplacementEvent<DragUpdateDetails> {
  this
    : super(
        raw: details,
        deviceStartPosition: details.globalPosition.toVector2(),
        deviceEndPosition:
            details.globalPosition.toVector2()
              ..x += details.delta.dx
              ..y += details.delta.dy,
      );

  final Duration timestamp = details.sourceTimeStamp ?? Duration.zero;

  @override
  String toString() =>
      'DragUpdateEvent('
      'devicePosition: $deviceStartPosition, '
      'canvasPosition: $canvasStartPosition, '
      'delta: $localDelta, '
      'pointerId: $pointerId, '
      'timestamp: $timestamp'
      ')';
}
