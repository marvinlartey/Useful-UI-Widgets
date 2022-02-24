import 'package:flutter/material.dart';

class Gradient extends StatelessWidget {
  const Gradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black.withAlpha(0),
            Colors.black12,
            Colors.black45
          ],
        ),
      ),
      child: const Text(
        'Foreground Text',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );
  }
}
