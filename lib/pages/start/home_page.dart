import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:popquiz/components/star_button.dart';

var temporizador = 0;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final data = [
    ItemData(
      title: "OLA PESSOAL",
      subtitle: " Seja bem vindo ao Popquiz, clique no circulo ou arraste para continuar",
      image: const AssetImage("assets/images/welcome.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.amber,
      subtitleColor: Colors.white,
    ),
    ItemData(
      title: "DICAS PARA JORNADA",
      subtitle: "Escreva um nome e responda as questões",
      image: const AssetImage("assets/images/lampada.png"),
      backgroundColor: Colors.white,
      titleColor: const Color.fromRGBO(242, 185, 51, 1),
      subtitleColor: const Color.fromRGBO(02, 10, 56, 1),
    ),
    ItemData(
      title: "PERGUNTAS",
      subtitle:
          "As perguntas tem pontos e você é nomeado de acordo com suas escolhas",
      image: const AssetImage("assets/images/duvida.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.amber,
      subtitleColor: Colors.white,
    ),
    ItemData(
      title: "HISTÓRICO",
      subtitle:
          "No histórico é possivel ver mais detalhes clicando no quadrado laranja",
      image: const AssetImage("assets/images/historico.png"),
      backgroundColor: Colors.white,
      titleColor:  Color.fromRGBO(0, 10, 56, 1),
      subtitleColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 40,
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index, double value) {
          temporizador = index;
          return ItemWidget(data: data[index]);
        },
      ),
    );
  }
}

class ItemData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  ItemData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.data,
    Key? key,
  }) : super(key: key);

  final ItemData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Flexible(
                flex: 20,
                child: Image(image: data.image),
              ),
              const Spacer(flex: 1),
              Text(
                data.title,
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(flex: 10),
              if (temporizador == 3)
                StarButton(
                    text: 'Começar',
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/star');
                    })
            ],
          ),
        ),
      ],
    );
  }
}
