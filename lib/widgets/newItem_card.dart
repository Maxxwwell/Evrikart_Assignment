import 'package:evrikart_assignment/models/new_items.dart';
import 'package:flutter/material.dart';

class NewItemCard extends StatelessWidget {
  final NewItem newItem;
  final Function press;

  NewItemCard({
    this.newItem,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Hero(
        tag: newItem.id,
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(newItem.image),
            ),
          ),
          child: Container(
              height: 8,
              width: 7,
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 11),
              margin: EdgeInsets.only(right: 112, bottom: 115, left: 4, top: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.black),
              child: Text(
                'NEW',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
      ),
    );
  }
}
