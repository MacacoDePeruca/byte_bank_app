import 'package:flutter/material.dart';

class featureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;
  var tamanho;

  featureItem(this.name, this.icon, {@required this.onClick, this.tamanho})
      : assert(icon != null),
        assert(onClick != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            onClick();
          },
          child: Container(

            padding: EdgeInsets.all(8.0),
            height: 100,
            width: tamanho,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    //fontFamily: 'Comfortaa'
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


