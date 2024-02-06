import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/item_model.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key, required this.itemModel});

  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          itemModel.playSound();
        },
        child: Container(
          //height: 94.9,
          width: double.infinity,
          color: itemModel.color,
        ),
      ),
    );
  }
}
