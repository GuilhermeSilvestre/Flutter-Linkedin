import 'package:linkedin_project/widgets/conversa.dart';
import 'package:linkedin_project/widgets/notificacao.dart';
import 'package:linkedin_project/widgets/post.dart';

Conversa conversa1 = Conversa(
  name: 'Clayton',
  image: 'assets/images/imagem_amigo1.jpg',
  messages: ['Oi, tudo bem?'],
);

Conversa conversa2 = Conversa(
  name: 'Jorge Roberto',
  image: 'assets/images/imagem_amigo2.jpg',
  messages: ['Hello, we are hiring! How desperate are you?'],
);

Conversa conversa3 = Conversa(
  name: 'Elaine',
  image: 'assets/images/imagem_amigo3.jpg',
  messages: [
    'Boa tarde, sou Elaine e vim fazer uma proposta para trabalhar no Mc Donalds como fritador de batata.'
  ],
);

Conversa conversa4 = Conversa(
  name: 'Guts',
  image: 'assets/images/imagem_amigo4.jpg',
  messages: ['Temos vaga para entrar no bando do Falcão.'],
);

List<Conversa> conversasList = [
  conversa1,
  conversa2,
  conversa3,
  conversa4,
];

List<Notificacao> notificacoes = [
  Notificacao(
    notificacao: 'Nova mensagem recebida',
    image: 'assets/images/not1.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao1',
  ),
  Notificacao(
    notificacao: 'Atualização do aplicativo disponível',
    image: 'assets/images/not2.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao2',
  ),
  Notificacao(
    notificacao: 'Cursos de especialização para conseguir a vaga dos sonhos!',
    image: 'assets/images/not3.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao3',
  ),
  Notificacao(
    notificacao: 'Promoção exclusiva para membros',
    image: 'assets/images/not4.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao4',
  ),
  Notificacao(
    notificacao: 'Convite para evento especial',
    image: 'assets/images/not5.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao5',
  ),
  Notificacao(
    notificacao: 'Novo amigo adicionado',
    image: 'assets/images/not1.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao6',
  ),
  Notificacao(
    notificacao: 'Oferta relâmpago hoje!',
    image: 'assets/images/not7.jpg',
    linkParaNotificacao: 'https://exemplo.com/notificacao7',
  ),
];

List<Post> posts = [
  Post(
    name: 'Jorge Roberto',
    profilepic: 'assets/images/imagem_amigo2.jpg',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/imagem_post1.jpg',
    numLikes: 20,
    numDislikes: 5,
    numComments: 10,
    numShares: 15,
  ),
  Post(
    name: 'Guts',
    profilepic: 'assets/images/imagem_amigo4.jpg',
    text: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    image: 'assets/images/imagem_post2.jpg',
    numLikes: 15,
    numDislikes: 3,
    numComments: 8,
    numShares: 12,
  ),
  Post(
    name: 'Clayton',
    profilepic: 'assets/images/imagem_amigo1.jpg',
    text: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
    image: 'assets/images/imagem_post3.jpg',
    numLikes: 18,
    numDislikes: 2,
    numComments: 12,
    numShares: 20,
  ),
  Post(
    name: 'Kleberson Dias',
    profilepic: 'assets/images/imagem_amigo5.jpg',
    text:
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    image: 'assets/images/imagem_post4.jpg',
    numLikes: 25,
    numDislikes: 4,
    numComments: 15,
    numShares: 18,
  ),
  Post(
    name: 'Richards Jonas',
    profilepic: 'assets/images/imagem_amigo6.jpg',
    text:
        'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'assets/images/imagem_post5.jpg',
    numLikes: 22,
    numDislikes: 3,
    numComments: 10,
    numShares: 22,
  ),
  Post(
    name: 'Clayton',
    profilepic: 'assets/images/imagem_amigo1.jpg',
    text:
        'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
    image: 'assets/images/imagem_post6.jpg',
    numLikes: 30,
    numDislikes: 8,
    numComments: 20,
    numShares: 25,
  ),
  Post(
    name: 'Jorge Roberto',
    profilepic: 'assets/images/imagem_amigo2.jpg',
    text:
        'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',
    image: 'assets/images/imagem_post7.jpg',
    numLikes: 28,
    numDislikes: 5,
    numComments: 18,
    numShares: 30,
  ),
  Post(
    name: 'Elaine Magal',
    profilepic: 'assets/images/imagem_amigo3.jpg',
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    image: 'assets/images/imagem_post8.jpg',
    numLikes: 32,
    numDislikes: 6,
    numComments: 22,
    numShares: 35,
  ),
];
