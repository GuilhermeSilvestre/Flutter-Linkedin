// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ConversaPrivada extends StatelessWidget {
  ConversaPrivada(
      {super.key,
      required this.name,
      required this.conversa,
      required this.image});

  String name;
  String image;

  List<String> conversa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Image.asset(image),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      conversa[0],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
