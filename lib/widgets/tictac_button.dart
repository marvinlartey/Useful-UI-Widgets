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
  //checks if button is tapped
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //sets the tap state to true
      onTap: () {
        setState(() {
          if (!isTapped) {
            //sets tapped state to true
            isTapped = true;

            //perform action when button is tapped
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
              //circle token properties
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.circle_outlined,
                      size: 55, color: Color.fromARGB(widget.circle, 0, 0, 0))),
              //cross token properties
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.close_sharp,
                      size: 55, color: Color.fromARGB(widget.cross, 0, 0, 0)))
            ],
          )),
    );
  }
}
