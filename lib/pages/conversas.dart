import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';
import 'package:linkedin_project/pages/conversaprivada.dart';

class Conversas extends StatelessWidget {
  const Conversas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Conversas'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Focadas'),
              Tab(text: 'Outras'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FocadasTab(),
            OutrasTab(),
          ],
        ),
      ),
    );
  }
}

class FocadasTab extends StatelessWidget {
  const FocadasTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversasList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(conversasList[index].image),
          ),
          title: Text(conversasList[index].name),
          subtitle: Text(conversasList[index].messages.last),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConversaPrivada(
                  image: conversasList[index].image,
                  name: conversasList[index].name,
                  conversa: conversasList[index].messages,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class OutrasTab extends StatelessWidget {
  const OutrasTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Nenhuma mensagem recebida',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Entre em contato e inicie um chat. Isso pode resultar em grandes oportunidades no futuro.',
            ),
          ),
        ],
      ),
    );
  }
}
