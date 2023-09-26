import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';

class MinhaRede extends StatefulWidget {
  const MinhaRede({Key? key}) : super(key: key);

  @override
  State<MinhaRede> createState() => _MinhaRedeState();
}

class _MinhaRedeState extends State<MinhaRede> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: const Color.fromARGB(255, 156, 174, 189),
      height: MediaQuery.of(context).size.height - 150,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Text(
                  'Pessoas que talvez você conheça',
                  style: TextStyle(
                      color: Color.fromARGB(255, 83, 80, 80),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 195, 211),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        height: 140.0,
                        width: 140.0,
                        child: Column(
                          children: [
                            Text(
                              users[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 110,
                              width: 110,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content:
                                            Image.asset(users[index].image),
                                      );
                                    },
                                  );
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(users[index].image),
                                ),
                              ),
                            ),
                            Text(
                              users[index].position,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '${users[index].conections} conexões em comum',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
