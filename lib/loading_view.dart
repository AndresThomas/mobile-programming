import 'package:flutter/material.dart';

class loading extends StatefulWidget {
  loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true, max: 1);
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/img/img.jpeg"),
          fit:BoxFit.cover
        )
      ),
      child: Center(
        child: CircularProgressIndicator(
          value: controller.value,
          semanticsLabel: 'Linear progress indicator',
        ),
      ),
    );
  }
}
