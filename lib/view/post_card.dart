// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:linkedin_project/fake_data/fakedata.dart';
import 'package:linkedin_project/pages/posttela.dart';

class postCard extends StatelessWidget {
  const postCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Image.asset(posts[index].profilepic),
                              );
                            },
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(posts[index].profilepic),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        posts[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      posts[index].text,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostTela(
                            name: posts[index].name,
                            image: posts[index].image,
                            text: posts[index].text,
                            profilepic: posts[index].profilepic,
                            numLikes: posts[index].numLikes,
                            numComments: posts[index].numComments,
                            numDislikes: posts[index].numDislikes,
                            numShares: posts[index].numShares,
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      posts[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Wrap(
                    children: <Widget>[
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                      Text(
                        'Likes: ${posts[index].numLikes}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Icon(
                        Icons.thumb_down,
                        color: Color.fromARGB(255, 77, 103, 121),
                        size: 20,
                      ),
                      Text(
                        'Dislikes: ${posts[index].numDislikes}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Icon(
                        Icons.chat_sharp,
                        color: Color.fromARGB(255, 129, 191, 233),
                        size: 20,
                      ),
                      Text(
                        'Comments: ${posts[index].numComments}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Icon(
                        Icons.share,
                        color: Color.fromARGB(255, 103, 228, 196),
                        size: 20,
                      ),
                      Text(
                        'Shares: ${posts[index].numShares}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
