import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';
import 'package:linkedin_project/pages/vagastela.dart';

class Vagas extends StatefulWidget {
  const Vagas({Key? key}) : super(key: key);

  @override
  State<Vagas> createState() => _VagasState();
}

class _VagasState extends State<Vagas> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: vagas.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 60,
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(vagas[index].image),
            ),
            title: Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(vagas[index].title),
                    InkWell(
                      onTap: () {
                        setState(() {
                          vagas[index].iconbool = !vagas[index].iconbool;
                        });
                      },
                      child: (!vagas[index].iconbool)
                          ? const Icon(Icons.favorite_outline)
                          : const Icon(Icons.favorite),
                    ),
                  ],
                ),
              ],
            ),
            subtitle: Wrap(
              children: [
                Text('${vagas[index].company} - '),
                Text(vagas[index].local),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VagasTela(
                    title: vagas[index].title,
                    image: vagas[index].image,
                    company: vagas[index].company,
                    local: vagas[index].local,
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
