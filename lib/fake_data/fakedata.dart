import 'package:linkedin_project/widgets/conversa.dart';
import 'package:linkedin_project/widgets/notificacao.dart';

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
