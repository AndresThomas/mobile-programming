import 'package:flutter/material.dart';

class twoButtons extends StatelessWidget {
  const twoButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.cyan,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            child: Icon(Icons.add),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(70, 70),
              shape: const CircleBorder(),
            )),
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(70, 70),
            shape: const CircleBorder(),
          ),
        )
      ],
    ));
  }
}
