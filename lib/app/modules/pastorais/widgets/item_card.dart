import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String titulo;
  final String image;
  final Function funcao;
  final Color textColor;
  final bool isWeb;

  const ItemCard(
      {Key key,
      @required this.titulo,
      @required this.image,
      @required this.funcao,
      @required this.textColor,
      @required this.isWeb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: isWeb == false
            ? CachedNetworkImage(
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
              )
            : Image.network(
                image,
                fit: BoxFit.cover,
              ),
        height: 20,
        margin: EdgeInsets.all(4),
      ),
      onTap: funcao,
    );
  }
}
