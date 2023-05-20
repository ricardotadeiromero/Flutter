import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/jogador');
              },
              icon: Icon(Icons.sports_soccer)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contador');
              },
              icon: Icon(Icons.calculate)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/info');
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 45)),
            ClipOval(
              child: Image.network(
                  'data:image/jpeg;base64,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',
                  width: 200,
                  fit: BoxFit.cover,
                  height: 200),
            ),
            Text(
              'Neymar Jr.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk_rounded,
                  size: 35,
                  color: Colors.black87,
                ),
                Padding(padding: EdgeInsets.only(right: 15, top: 70)),
                Icon(
                  Icons.email,
                  size: 35,
                  color: Colors.black87
                ),
                Padding(padding: EdgeInsets.only(right: 15, top: 70)),
                Icon(
                  Icons.message,
                  size: 35,
                  color: Colors.black87,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              color: Colors.black38,
              child: Text(
                'Neymar da Silva Santos Júnior (Mogi das Cruzes, 5 de fevereiro de 1992) é um futebolista brasileiro que atua como atacante. Atualmente joga pelo Paris Saint-Germain e pela Seleção Brasileira. É considerado o principal futebolista brasileiro da atualidade e um dos melhores futebolistas do mundo. Revelado pelo Santos em 2009, Neymar ganhou diversos títulos com o clube, incluindo dois Campeonatos Paulistas seguidos, uma Copa do Brasil e uma Libertadores; com esse último sendo o primeiro do Santos desde 1963.',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
