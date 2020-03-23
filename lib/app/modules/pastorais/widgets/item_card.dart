import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String titulo;
  final String image;
  final Function funcao;
  final Color textColor;

  const ItemCard({Key key, this.titulo, this.image, this.funcao, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    image,
                  ),
                  fit: BoxFit.cover)),
          height: 20,
          margin: EdgeInsets.all(4),
          // child: Container(
          //   padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          //   child: Text(
          //     titulo,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: textColor,
          //       fontSize: MediaQuery.of(context).size.width < 400 ? 16 : 20,
          //       fontWeight: FontWeight.bold
          //     ),
          //   ),
          // )
          ),
      onTap: funcao,
    );
  }
}
