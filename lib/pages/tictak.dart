import 'package:flutter/material.dart';

class Tictak extends StatefulWidget {
  const Tictak({Key? key}) : super(key: key);

  @override
  _TictakState createState() => _TictakState();
}

class _TictakState extends State<Tictak> {
  int on = 255;
  int off = 0;
  int counter = 0;
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
  @override
  void win() {
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
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
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
                InkWell(
                  onTap: () {
                    setState(() {
                      if (a == 0 && b == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && b == 0) {
                      setState(() {
                        a = 255;

                        win();
                      });
                    } else if (counter % 2 == 0 && a == 0) {
                      setState(() {
                        b = 255;
                        win();
                      });
                    }
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
                                  size: 55, color: Color.fromARGB(a, 3, 3, 3))),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.close_sharp,
                                  size: 55, color: Color.fromARGB(b, 3, 3, 3)))
                        ],
                      )),
                ),
                //1-2
                InkWell(
                  onTap: () {
                    setState(() {
                      if (c == 0 && d == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && d == 0) {
                      setState(() {
                        c = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && c == 0) {
                      setState(() {
                        d = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(c, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(d, 3, 3, 3)))
                      ],
                    ),
                  ),
                ),

                //1-3
                InkWell(
                  onTap: () {
                    setState(() {
                      if (e == 0 && f == 0) {
                        counter++;
                      } else {}
                    });

                    if (counter % 2 != 0 && f == 0) {
                      setState(() {
                        e = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && e == 0) {
                      setState(() {
                        f = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(e, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(f, 3, 3, 3)))
                      ],
                    ),
                  ),
                )
              ]),

              //ROW 2
              TableRow(children: [
                //2-1
                InkWell(
                  onTap: () {
                    setState(() {
                      if (g == 0 && h == 0) {
                        counter++;
                      } else {}
                    });

                    if (counter % 2 != 0 && h == 0) {
                      setState(() {
                        g = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && g == 0) {
                      setState(() {
                        h = 255;
                        win();
                      });
                    }
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
                                  size: 55, color: Color.fromARGB(g, 3, 3, 3))),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.close_sharp,
                                  size: 55, color: Color.fromARGB(h, 3, 3, 3)))
                        ],
                      )),
                ),

                //2-2
                InkWell(
                  onTap: () {
                    setState(() {
                      if (i == 0 && j == 0) {
                        counter++;
                      } else {}
                    });

                    if (counter % 2 != 0 && j == 0) {
                      setState(() {
                        i = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && i == 0) {
                      setState(() {
                        j = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(i, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(j, 3, 3, 3)))
                      ],
                    ),
                  ),
                ),

                //2-3
                InkWell(
                  onTap: () {
                    setState(() {
                      if (k == 0 && l == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && l == 0) {
                      setState(() {
                        k = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && k == 0) {
                      setState(() {
                        l = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(k, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(l, 3, 3, 3)))
                      ],
                    ),
                  ),
                )
              ]),

              //ROW 3
              TableRow(children: [
                //3-1
                InkWell(
                  onTap: () {
                    setState(() {
                      if (m == 0 && n == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && n == 0) {
                      setState(() {
                        m = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && m == 0) {
                      setState(() {
                        n = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(m, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(n, 3, 3, 3)))
                      ],
                    ),
                  ),
                ),

                //3-2
                InkWell(
                  onTap: () {
                    setState(() {
                      if (o == 0 && p == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && p == 0) {
                      setState(() {
                        o = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && o == 0) {
                      setState(() {
                        p = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(o, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(p, 3, 3, 3)))
                      ],
                    ),
                  ),
                ),

                //3-3
                InkWell(
                  onTap: () {
                    setState(() {
                      if (q == 0 && q == 0) {
                        counter++;
                      } else {}
                    });
                    if (counter % 2 != 0 && r == 0) {
                      setState(() {
                        q = 255;
                        win();
                      });
                    } else if (counter % 2 == 0 && q == 0) {
                      setState(() {
                        r = 255;
                        win();
                      });
                    }
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
                                size: 55, color: Color.fromARGB(q, 3, 3, 3))),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.close_sharp,
                                size: 55, color: Color.fromARGB(r, 3, 3, 3)))
                      ],
                    ),
                  ),
                )
              ]),
            ],
          ),
          IconButton(
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
                  counter = 0;
                });
              },
              icon: const Icon(
                Icons.restore_outlined,
                size: 55,
              )),
          IconButton(
              onPressed: () {
                print(
                  'a $a '
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
                  'r $r '
                  '$counter',
                );
              },
              icon: const Icon(
                Icons.restore_outlined,
                size: 55,
              )),
        ],
      ),
    );
  }
}
