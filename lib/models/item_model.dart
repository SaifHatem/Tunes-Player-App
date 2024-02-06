import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final String sound;
  final Color color;

  const ItemModel({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
