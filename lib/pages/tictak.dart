import 'package:flutter/material.dart';

class Tictak extends StatefulWidget {
  const Tictak({Key? key}) : super(key: key);

  @override
  _TictakState createState() => _TictakState();
}

class _TictakState extends State<Tictak> {
  int on = 255;
  int off = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('TICTACTOE'),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.top,
        border: TableBorder.all(width: 9, color: Color.fromARGB(255, 0, 0, 0)),
        children: [
          //ROW 1
          TableRow(children: [
            //1-1
            Container(
                margin: EdgeInsets.all(33),
                height: MediaQuery.of(context).size.height * 0.1,
                color: Color.fromARGB(255, 255, 255, 255),
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
                )),
            //1-2
            Container(
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
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
            ),

            //1-3
            Container(
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.circle_outlined,
                          size: 55, color: Color.fromARGB(off, 3, 3, 3))),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close_sharp,
                          size: 55, color: Color.fromARGB(on, 3, 3, 3)))
                ],
              ),
            )
          ]),

          //ROW 2
          TableRow(children: [
            //2-1
            Container(
                margin: EdgeInsets.all(33),
                height: MediaQuery.of(context).size.height * 0.1,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Stack(
                  children: <Widget>[
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.circle_outlined,
                            size: 55, color: Color.fromARGB(255, 3, 3, 3))),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.close_sharp,
                            size: 55, color: Color.fromARGB(255, 3, 3, 3)))
                  ],
                )),

            //2-2
            Container(
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
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
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
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

          //ROW 3
          TableRow(children: [
            //3-1
            Container(
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
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
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
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
              margin: EdgeInsets.all(33),
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: <Widget>[
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
