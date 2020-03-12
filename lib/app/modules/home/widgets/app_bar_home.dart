import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double statusSize = MediaQuery.of(context).padding.top;

    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Container(
            height: statusSize,
            color: Colors.transparent,
          ),
          Container(
            height: 165,
            width: larguraTela,
            color: Color.fromARGB(0, 50, 150, 200),
            child: Padding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Paróquia \nSão Lourenço",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'CinzelDecorative',
                          fontSize: 28),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 25, top: 35)),
          ),
        ],
      ),
    );
  }
}
