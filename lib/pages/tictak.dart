import 'package:flutter/material.dart';

class Tictak extends StatefulWidget {
  const Tictak({Key? key}) : super(key: key);

  @override
  _TictakState createState() => _TictakState();
}

class _TictakState extends State<Tictak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('TICTACTOE'),
      ),
      body: Table(
        border: TableBorder.all(width: 9, color: Color.fromARGB(255, 0, 0, 0)),
        children: [
          //ROW 1
          TableRow(children: [
            //1-1
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Color.fromARGB(255, 233, 162, 162),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 250,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                )),
            //1-2
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),

            //1-3
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(
                  onPressed: null, icon: Icon(Icons.edgesensor_high_outlined)),
            )
          ]),

          //ROW 2
          TableRow(children: [
            //2-1
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),

            //2-2
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),

            //2-3
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(
                  onPressed: null, icon: const Icon(Icons.games_sharp)),
            )
          ]),

          //ROW 3
          TableRow(children: [
            //3-1
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),

            //3-2
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),

            //3-3
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Color.fromARGB(255, 255, 255, 255),
              child: const IconButton(
                  onPressed: null, icon: const Icon(Icons.games_sharp)),
            )
          ]),
        ],
      ),
    );
  }
}
