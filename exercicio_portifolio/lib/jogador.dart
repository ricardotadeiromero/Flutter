import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'jogadores.dart';

class Jogador extends StatelessWidget {
  const Jogador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ), 

            DecoratedBox(
              decoration: BoxDecoration(color: Colors.white24),
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/15/Santos_Logo.png', width: 150),
            ),

            SizedBox(
              height: 20,
            ), 

            Jogadores("Marcos Leonardo", 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRodfvWcDoWtSCP-UFWYYDPWGCPeaL3Q6trEBI83w4Bwg&s'),
            Jogadores("Neymar", 'https://img.a.transfermarkt.technology/portrait/big/68290-1669394812.jpg?lm=1'),
            Jogadores("Pelé", 'https://s2.glbimg.com/Xs54gpNo-Nj_gpJLmA0ELkkEWV0=/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2022/h/f/gok9BESASbwUdKZ3m3rA/foto21cul-601-pele-d8.jpg'),
            Jogadores("Robinho", 'https://ogimg.infoglobo.com.br/in/24788826-75f-d47/FT1086A/90076772_13-10-2020Santos-Futebol-ClubeRobinho-durante-treinamento-no-CT-do-clube.-Foto-Ivan-S.jpg'),
          ],
        ),
      )
      ),
    );
  }
}