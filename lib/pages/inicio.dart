import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black38,
              height: 300,
            ),
            Container(
              color: Colors.amber,
              height: 300,
            ),
            Container(
              color: Colors.blue,
              height: 300,
            ),
            Container(
              color: Colors.pink,
              height: 300,
            ),
            Container(
              color: Colors.redAccent,
              height: 300,
            ),
            Container(
              color: Colors.purpleAccent,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
