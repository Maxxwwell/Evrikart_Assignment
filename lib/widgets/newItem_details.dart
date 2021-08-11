import 'package:evrikart_assignment/models/new_items.dart';
import 'package:flutter/material.dart';

class NewItemDetails extends StatelessWidget {
  final NewItem newItem;

  NewItemDetails({this.newItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: newItem.id,
          child: Image.asset(newItem.image)),
      ),
    );
  }
}
