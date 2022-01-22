import 'package:flutter/material.dart';
import 'package:popquiz/components/action_button.dart';
import 'package:popquiz/models/container_total.dart';
import 'package:popquiz/widget/container_historic.dart';

var contadorGlobal = 0;

class Historic extends StatefulWidget {
  const Historic({Key? key}) : super(key: key);

  @override
  State<Historic> createState() => _HistoricState();
}

class _HistoricState extends State<Historic> {
  final containers = [];

  addContainerHistoric(String name) {
    final novoContainer = ContainerTotal(
      name: name,
      count: contadorGlobal,
    );
    setState(() {
      containers.add(containers);
      contadorGlobal++;
    });
  }

  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SafeArea(
              child: Text(
            'Histórico',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          ContainerHistoric(
            name: 'Gustavo',
            result: 'pessoa Casual',
            route: '/personalHistory',
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: ActionButton(
              text: 'Novo questionário',
              route: '/startPage',
            ),
          ),
        ],
      ),
    );
  }
}


//          ContainerHistoric(),