import 'package:chimpazilla/componentes_visuais/item_pequeno_homepage.dart';
import 'package:chimpazilla/widgets/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          myAppBar(),
          SizedBox(
            height: 150,
            width: larguraTela,
            child: listaHorizontal(larguraTela),
          ),
        ],
      ),
    );
  }
}

Container listaHorizontal(var larguraTela) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 120.0,
    child: ListView(
      //shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          child: featureItem(
            'ChimpPay',
            Icons.attach_money,
            tamanho: (larguraTela * 0.95),
            onClick: () {
              debugPrint('clicou');
            },
          ),
        ),
        Container(
          child: featureItem(
            'ChimpCatch',
            Icons.monetization_on,
            tamanho: (larguraTela * 0.95),
            onClick: () {
              debugPrint('clicou');
            },
          ),
        ),
      ],
    ),
  );
}
