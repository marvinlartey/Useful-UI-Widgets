import 'package:flutter/material.dart';

class Tictak extends StatefulWidget {
  const Tictak({Key? key}) : super(key: key);

  @override
  _TictakState createState() => _TictakState();
}

class _TictakState extends State<Tictak> {
  int on = 255;
  int off = 0;
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0, i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('TICTACTOE'),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.top,
        border: TableBorder.all(
            width: 9, color: const Color.fromARGB(255, 0, 0, 0)),
        children: [
          //ROW 1
          TableRow(children: [
            //1-1
            InkWell(
              onTap: () {
                if (a == 0) {
                  setState(() {
                    a = 255;
                    b = 0;
                  });
                } else if (a == 255) {
                  setState(() {
                    a = 0;
                    b = 255;
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
                          onPressed: () {
                            if (a == 0) {
                              setState(() {
                                a = 255;
                                b = 0;
                              });
                            } else if (a == 255) {
                              setState(() {
                                a = 0;
                                b = 255;
                              });
                            }
                          },
                          icon: Icon(Icons.circle_outlined,
                              size: 55, color: Color.fromARGB(a, 3, 3, 3))),
                      IconButton(
                          onPressed: () {
                            if (a == 0) {
                              setState(() {
                                a = 255;
                                b = 0;
                              });
                            } else if (a == 255) {
                              setState(() {
                                a = 0;
                                b = 255;
                              });
                            }
                          },
                          icon: Icon(Icons.close_sharp,
                              size: 55, color: Color.fromARGB(b, 3, 3, 3)))
                    ],
                  )),
            ),
            //1-2
            InkWell(
              onTap: () {
                if (c == 0) {
                  setState(() {
                    c = 255;
                    d = 0;
                  });
                } else if (c == 255) {
                  setState(() {
                    c = 0;
                    d = 255;
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
                if (e == 0) {
                  setState(() {
                    e = 255;
                    f = 0;
                  });
                } else if (e == 255) {
                  setState(() {
                    e = 0;
                    f = 255;
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
                if (g == 0) {
                  setState(() {
                    g = 255;
                    h = 0;
                  });
                } else if (g == 255) {
                  setState(() {
                    g = 0;
                    h = 255;
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
            Container(
              margin: const EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: const <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3)))
                ],
              ),
            ),

            //2-3
            Container(
              margin: const EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(on, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(off, 3, 3, 3)))
                ],
              ),
            )
          ]),

          //ROW 3
          TableRow(children: [
            //3-1
            Container(
              margin: const EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: const <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3)))
                ],
              ),
            ),

            //3-2
            Container(
              margin: const EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: const <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3)))
                ],
              ),
            ),

            //3-3
            Container(
              margin: const EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: const <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(255, 3, 3, 3)))
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
