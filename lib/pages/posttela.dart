// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PostTela extends StatelessWidget {
  PostTela({
    super.key,
    required this.name,
    required this.profilepic,
    required this.text,
    required this.image,
    required this.numComments,
    required this.numDislikes,
    required this.numLikes,
    required this.numShares,
  });

  String name;

  String profilepic;

  String image;

  String text;

  int numLikes;

  int numDislikes;

  int numComments;

  int numShares;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Image.asset(profilepic),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(profilepic),
                  radius: 15, // Defina o tamanho desejado
                ),
              ),
              const SizedBox(width: 10), // Espaço entre a imagem e o texto
              Text(name),
            ],
          ),
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
                  text,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
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
