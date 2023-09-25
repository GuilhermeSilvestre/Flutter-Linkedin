import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';
import 'package:linkedin_project/view/post_card.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: postCard(),
    );
  }
}
