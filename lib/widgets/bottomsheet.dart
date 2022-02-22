import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Column bottomConfirmation(BuildContext context) {
  return Column(children: <Widget>[
    const Text('Confirm Request Detailssss'),
    const SizedBox(height: 20),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TextField(
            decoration: InputDecoration(
          enabled: false,
          errorMaxLines: 1,
          hintText: 'GHc 500 ',
          labelText: 'Amount',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(fontSize: 15.0, color: Colors.black54),
        )),
        const SizedBox(
          height: 55,
        ),
        const TextField(
            decoration: InputDecoration(
          enabled: false,
          errorMaxLines: 1,
          labelText: 'Purpose',
          hintText: 'abc lorem eget metus ',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(fontSize: 15.0, color: Colors.black54),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 55),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(44))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Bottomsheet(),
                  ));
                },
                child: const Text(
                  'Confirm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(44))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Bottomsheet(),
                  ));
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    )
  ]);
}
