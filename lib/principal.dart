import 'package:flutter/material.dart';
import 'package:linkedin_project/pages/conversas.dart';
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

  void noContent() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.6,
            child: const Center(
              child: Text(
                'Ainda não existe conteúdo para esses campos',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _searchController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 260,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 220,
              child: DrawerHeader(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Image.asset(
                                    'assets/images/profile_pic.jpg'),
                              );
                            },
                          );
                        },
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Guilherme Silvestre',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        noContent();
                      },
                      child: const Text(
                        'Ver perfil',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: noContent,
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '14',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ' visualizações do perfil',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Grupos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: noContent,
            ),
            ListTile(
              title: const Text(
                'Eventos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: noContent,
            ),
          ],
        ),
      ),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Conversas(),
                ),
              );
            },
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
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
                );
              }),
            ],
          ),
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
        return const Publicacao();
      case 3:
        return const Notificacoes();
      case 4:
        return const Vagas();
      default:
        return Container();
    }
  }
}
