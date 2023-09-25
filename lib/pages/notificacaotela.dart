// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NotificacaoTela extends StatefulWidget {
  NotificacaoTela(
      {super.key,
      required this.notificacao,
      required this.image,
      required this.linkParaNotificacao});

  String notificacao;

  String image;

  String linkParaNotificacao;

  @override
  State<NotificacaoTela> createState() => _NotificacaoTelaState();
}

class _NotificacaoTelaState extends State<NotificacaoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notificações'),
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
                Image.asset(widget.image),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.notificacao,
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
