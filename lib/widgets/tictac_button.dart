import 'package:flutter/material.dart';

class TictacButton extends StatefulWidget {
  const TictacButton({
    Key? key,
    required this.onPress,
    required this.circle,
    required this.cross,
  }) : super(key: key);

  final Function() onPress;
  final int circle;
  final int cross;

  @override
  State<TictacButton> createState() => _TictacButtonState();
}

class _TictacButtonState extends State<TictacButton> {
  bool isTapped = false;

  /* int counter = 0;
  int? a = 0;
  int? b = 0,
      c = 0,
      d = 0,
      e = 0,
      f = 0,
      g = 0,
      h = 0,
      i = 0,
      j = 0,
      k = 0,
      l = 0,
      m = 0,
      n = 0,
      o = 0,
      p = 0,
      q = 0,
      r = 0; */

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (!isTapped) {
            isTapped = true;
            widget.onPress();
          }
        });
      },
      child: Container(
          margin: const EdgeInsets.all(33),
          height: MediaQuery.of(context).size.height * 0.1,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Stack(
            children: <Widget>[
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.circle_outlined,
                      size: 55, color: Color.fromARGB(widget.circle, 0, 0, 0))),
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.close_sharp,
                      size: 55, color: Color.fromARGB(widget.cross, 0, 0, 0)))
            ],
          )),
    );
  }

  /* void win() {
    if (a == 255 && c == 255 && e == 255 ||
        g == 255 && i == 255 && k == 255 ||
        m == 255 && o == 255 && q == 255 ||
        a == 255 && g == 255 && m == 255 ||
        c == 255 && i == 255 && o == 255 ||
        e == 255 && k == 255 && q == 255 ||
        m == 255 && i == 255 && e == 255 ||
        a == 255 && i == 255 && q == 255) {
      print('O wins');
    } else if (b == 255 && d == 255 && f == 255 ||
        h == 255 && j == 255 && l == 255 ||
        n == 255 && p == 255 && r == 255 ||
        b == 255 && h == 255 && n == 255 ||
        d == 255 && j == 255 && p == 255 ||
        f == 255 && l == 255 && r == 255 ||
        n == 255 && j == 255 && f == 255 ||
        b == 255 && j == 255 && r == 255) {
      print('X wins');

      setState(() {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        n = 0;
        o = 0;
        p = 0;
        q = 0;
        r = 0;
        counter = 0;
      });
    }
  } */
}
