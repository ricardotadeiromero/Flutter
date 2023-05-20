import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'jogadores.dart';

class Jogador extends StatelessWidget {
  const Jogador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogadores'),
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
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.white24),
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/15/Santos_Logo.png',
                  width: 100),
            ),
            SizedBox(
              height: 10,
            ),
            Jogadores("Marcos Leonardo",
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRodfvWcDoWtSCP-UFWYYDPWGCPeaL3Q6trEBI83w4Bwg&s'),
            Jogadores("Neymar Jr.",
                'https://p2.trrsf.com/image/fget/cf/1200/1600/middle/images.terra.com/2022/01/15/neymar-comecou-a-sua-carreira-jogando-pelo-santos-ricardo-saibun-santos-fc.jpeg'),
            Jogadores("Ganso",
                'data:image/jpeg;base64,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'),
            Jogadores("Robinho",
                'https://ogimg.infoglobo.com.br/in/24788826-75f-d47/FT1086A/90076772_13-10-2020Santos-Futebol-ClubeRobinho-durante-treinamento-no-CT-do-clube.-Foto-Ivan-S.jpg'),
          ],
        ),
      )),
    );
  }
}
