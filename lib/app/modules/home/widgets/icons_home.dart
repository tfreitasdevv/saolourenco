import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IconsHome extends StatelessWidget {
  final String icone;
  final Function funcao;
  final bool web;

  const IconsHome(
      {Key key,
      @required this.icone,
      @required this.funcao,
      @required this.web})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: web == false
            ? CachedNetworkImage(
                color: Colors.white,
                imageUrl: icone,
              )
            : Image.network(
                icone,
                color: Colors.white,
              ),
        iconSize: 20,
        onPressed: funcao);
  }
}
