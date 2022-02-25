import 'package:flutter/material.dart';

import 'scrollviews.dart';
import 'test1.dart';
import 'tictak.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(
            width: 9, color: const Color.fromARGB(255, 255, 255, 255)),
        children: [
          TableRow(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Tictak(),
                    ));
                  },
                  icon: const Icon(
                    Icons.abc,
                    semanticLabel: 'tictac',
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Scrollviews(),
                    ));
                  },
                  icon: Icon(Icons.abc)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blue.shade300,
              child: const IconButton(
                  onPressed: null, icon: Icon(Icons.games_sharp)),
            )
          ]),
          TableRow(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blue.shade300,
              child: const IconButton(
                  onPressed: null, icon: Icon(Icons.games_sharp)),
            )
          ]),
          TableRow(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orange.shade300,
              child: const IconButton(onPressed: null, icon: Icon(Icons.abc)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blue.shade300,
              child: const IconButton(
                  onPressed: null, icon: Icon(Icons.games_sharp)),
            )
          ]),
        ],
      ),
    );
  }
}
