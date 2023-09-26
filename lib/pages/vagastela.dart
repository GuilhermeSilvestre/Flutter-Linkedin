// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class VagasTela extends StatelessWidget {
  VagasTela(
      {super.key,
      required this.title,
      required this.image,
      required this.company,
      required this.local});

  String title;
  String image;
  String company;
  String local;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('VAGA'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(image),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  company,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 109, 108, 105),
                  ),
                ),
                Text(
                  local,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 109, 108, 105),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo augue sed lorem porta, id mattis purus gravida. Donec fermentum id lorem egestas suscipit. Suspendisse pharetra quam non lacus dictum gravida. Nam vel semper massa. Donec nulla elit, vestibulum ut venenatis vel, lobortis eu velit. Ut nec libero velit. Donec et porta odio. Aliquam eget mi tellus. Sed posuere est ligula, vel dapibus orci egestas vitae.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ));
  }
}
