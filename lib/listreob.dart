import 'package:flutter/material.dart';

class ListREOB extends StatelessWidget {
  final Axis scrollIn;
  final Color itemColor;
  final double height;
  final double width;
  final double margin;
  final int numberOfItems;
  const ListREOB(
      {Key? key,
      required this.scrollIn,
      required this.itemColor,
      required this.height,
      required this.width,
      required this.margin,
      required this.numberOfItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: scrollIn,
        itemCount:
            numberOfItems, //podriamos tener un array extraido de una api o una BD
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: width,
            margin: EdgeInsets.all(margin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: itemColor),
            child: Center(
              child: ListTile(
                  leading: const Icon(Icons.list), title: Text("List item $index")),
            ),
          );
        });
  }
}
