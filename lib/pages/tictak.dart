import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

import '../widgets/tictac_button.dart';

class Tictak extends StatefulWidget {
  const Tictak({Key? key}) : super(key: key);

  @override
  _TictakState createState() => _TictakState();
}

class _TictakState extends State<Tictak> {
  //for checking player's turn
  bool isPlayer1 = true;

  //display winner toasts
  void showWinner(String winner) =>
      Fluttertoast.showToast(msg: winner + " wins", fontSize: 20);

  int a = 0,
      b = 0,
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
      r = 0;

  //O win conditions
  void win() {
    if (a == 255 && c == 255 && e == 255 ||
        g == 255 && i == 255 && k == 255 ||
        m == 255 && o == 255 && q == 255 ||
        a == 255 && g == 255 && m == 255 ||
        c == 255 && i == 255 && o == 255 ||
        e == 255 && k == 255 && q == 255 ||
        m == 255 && i == 255 && e == 255 ||
        a == 255 && i == 255 && q == 255) {
      showWinner('O');
    } //X win conditions
    else if (b == 255 && d == 255 && f == 255 ||
        h == 255 && j == 255 && l == 255 ||
        n == 255 && p == 255 && r == 255 ||
        b == 255 && h == 255 && n == 255 ||
        d == 255 && j == 255 && p == 255 ||
        f == 255 && l == 255 && r == 255 ||
        n == 255 && j == 255 && f == 255 ||
        b == 255 && j == 255 && r == 255) {
      showWinner('X');
    }
  }

  //builds the tictac_button
  Widget buildTictacButton(int _circle, int _cross,
      Function circlePlayedCallback, Function crossPlayedCallback) {
    return TictacButton(
        circle: _circle,
        cross: _cross,
        onPress: () {
          setState(() {
            //checks whos turn it is
            if (isPlayer1) {
              //
              circlePlayedCallback();
            } else {
              crossPlayedCallback();
            }
            //switches turn
            isPlayer1 = !isPlayer1;
          });
          //checks win conditions
          win();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TICTACTOE'),
      ),
      body: Column(
        children: [
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(
                width: 9, color: const Color.fromARGB(255, 0, 0, 0)),
            children: [
              //ROW 1
              TableRow(children: [
                //1-1

                buildTictacButton(a, b, () {
                  a = 255;
                }, () {
                  b = 255;
                }),
                //1-2
                buildTictacButton(c, d, () {
                  c = 255;
                }, () {
                  d = 255;
                }),

                //1-3
                buildTictacButton(e, f, () {
                  e = 255;
                }, () {
                  f = 255;
                }),
              ]),

              //ROW 2
              TableRow(children: [
                //2-1
                buildTictacButton(g, h, () {
                  g = 255;
                }, () {
                  h = 255;
                }),

                //2-2
                buildTictacButton(i, j, () {
                  i = 255;
                }, () {
                  j = 255;
                }),

                //2-3
                buildTictacButton(k, l, () {
                  k = 255;
                }, () {
                  l = 255;
                }),
              ]),

              //ROW 3
              TableRow(children: [
                //3-1
                buildTictacButton(m, n, () {
                  m = 255;
                }, () {
                  n = 255;
                }),

                //3-2
                buildTictacButton(o, p, () {
                  o = 255;
                }, () {
                  p = 255;
                }),

                //3-3
                buildTictacButton(q, r, () {
                  q = 255;
                }, () {
                  r = 255;
                }),
              ]),
            ],
          ),
          SizedBox(
            height: 90,
            child: IconButton(
                onPressed: () {
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
                  });
                },
                icon: const Icon(
                  Icons.restore_outlined,
                  size: 55,
                )),
          ),
          SizedBox(
            child: IconButton(
                onPressed: () {
                  print('a $a '
                      'b $b '
                      'c $c '
                      'd $d '
                      'e $e '
                      'f $f '
                      'g $g '
                      'h $h '
                      'i $i '
                      'j $j '
                      'k $k '
                      'l $l '
                      'm $m '
                      'n $n '
                      'o $o '
                      'p $p '
                      'q $q '
                      'r $r ');
                },
                icon: const Icon(
                  Icons.restore_outlined,
                  size: 55,
                )),
          ),
        ],
      ),
    );
  }
}
