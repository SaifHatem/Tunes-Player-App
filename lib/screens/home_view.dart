import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/item_model.dart';
import 'package:tunes_player_app/widgets/item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<ItemModel> item = const [
    ItemModel(
      color: Colors.blue,
      sound: 'note1.wav',
    ),
    ItemModel(
      color: Color.fromARGB(255, 5, 17, 126),
      sound: 'note2.wav',
    ),
    ItemModel(
      color: Color.fromARGB(255, 179, 7, 7),
      sound: 'note3.wav',
    ),
    ItemModel(
      color: Color.fromARGB(255, 207, 65, 65),
      sound: 'note4.wav',
    ),
    ItemModel(
      color: Color.fromARGB(255, 5, 145, 124),
      sound: 'note5.wav',
    ),
    ItemModel(
      color: Colors.blue,
      sound: 'note6.wav',
    ),
    ItemModel(
      color: Colors.purple,
      sound: 'note7.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.brown,
          title: const Center(
            child: (Text(
              "Tunes Player",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          ),
        ),
        body: Column(
          children: item
              .map(
                (e) => ItemCategory(itemModel: e),
              )
              .toList(),
        ));
  }
}
