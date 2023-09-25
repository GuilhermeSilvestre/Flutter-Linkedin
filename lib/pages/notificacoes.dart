import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';
import 'package:linkedin_project/pages/notificacaotela.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({Key? key}) : super(key: key);

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: notificacoes.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 60,
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: CircleAvatar(
              backgroundImage: AssetImage(notificacoes[index].image),
            ),
            title: Text(notificacoes[index].notificacao),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificacaoTela(
                    notificacao: notificacoes[index].notificacao,
                    image: notificacoes[index].image,
                    linkParaNotificacao:
                        notificacoes[index].linkParaNotificacao,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
