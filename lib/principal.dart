import 'package:flutter/material.dart';
import 'package:linkedin_project/pages/inicio.dart';
import 'package:linkedin_project/pages/minharede.dart';
import 'package:linkedin_project/pages/notificacoes.dart';
import 'package:linkedin_project/pages/publicacao.dart';
import 'package:linkedin_project/pages/searchresults.dart';
import 'package:linkedin_project/pages/vagas.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  TextEditingController _searchController = TextEditingController();
  int paginaAtual = 0;
  String searchTyped = '';

  @override
  void initState() {
    super.initState();
    _searchController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(255, 220, 226, 240),
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  if (searchTyped != '') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchResults(
                            searchTyped:
                                searchTyped), // Substitua SearchResults() pela sua página de resultados de busca
                      ),
                    );
                    setState(() {
                      _searchController.text = '';
                    });
                  }
                },
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  //Aqui não precisa de nada
                },
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 220, 226, 240),
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (text) {
                      searchTyped = text;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Pesquisar',
                      contentPadding: EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 17),
                      border: InputBorder.none,
                    ),
                    onTap: () {
                      //
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () {
              //
            },
          ),
        ],
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                //
              },
              child: const ClipOval(
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/profile_pic.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: _getPage(paginaAtual)),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black45,
        currentIndex: paginaAtual,
        selectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            paginaAtual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'Minha Rede'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), label: 'Publicação'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notificações'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Vagas'),
        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const Inicio();
      case 1:
        return const MinhaRede();
      case 2:
        return const Notificacoes();
      case 3:
        return const Publicacao();
      case 4:
        return const Vagas();
      default:
        return Container();
    }
  }
}
