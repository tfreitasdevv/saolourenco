import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String titulo;
  final String image;
  final Function funcao;
  final Color textColor;

  const ItemCard(
      {Key key, this.titulo, this.image, this.funcao, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: CachedNetworkImage(
          imageUrl: image,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white))),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        height: 20,
        margin: EdgeInsets.all(4),
      ),
      onTap: funcao,
    );
  }
}
