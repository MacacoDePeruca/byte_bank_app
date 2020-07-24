import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          height: 230,
          // decoration: arredondarPontas(),
          decoration: BoxDecoration(
            color: Colors.orange,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
              colors: [const Color(0xFFF57C00), const Color(0xFFFFAB40)], // whitish to gray
              tileMode: TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'images/chimpLogo.png',
                      color: Colors.white,
                      height: 50,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Vitor',
                        style: TextStyle(
                          // fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Budega 1',
                        style: TextStyle(
                          // fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 32 ,
              ),
              Padding(

                padding: const EdgeInsets.only(right: 8.0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Crédito',
                      style: TextStyle(
                        // fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 46,
                          color: Colors.white),
                    ),
                    Text(
                      '50,00',
                      style: TextStyle(
                        // fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 46,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

BoxDecoration arredondarPontas() {
  return BoxDecoration(
      color: Colors.orange[700],
      border: Border.all(color: Colors.orange[700]),
      borderRadius: BorderRadius.all(Radius.circular(10.0)));
}


