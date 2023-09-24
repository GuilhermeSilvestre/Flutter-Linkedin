// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SearchResults extends StatefulWidget {
  SearchResults({super.key, required this.searchTyped});

  @override
  State<SearchResults> createState() => _SearchResultsState();

  String searchTyped;
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Você pesquisou ${widget.searchTyped} no app!',
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar para Início'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
