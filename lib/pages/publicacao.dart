import 'package:flutter/material.dart';
import 'package:linkedin_project/pages/inicio.dart';

class Publicacao extends StatefulWidget {
  const Publicacao({Key? key}) : super(key: key);

  @override
  State<Publicacao> createState() => _PublicacaoState();
}

class _PublicacaoState extends State<Publicacao> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(
                hintText: 'Sobre o que você quer falar?',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              FocusScope.of(context).unfocus();
              _textFieldController.text = '';
            },
          ),
        ],
      ),
    );
  }
}
