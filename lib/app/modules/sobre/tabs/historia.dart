import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class Historia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              historia,
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
