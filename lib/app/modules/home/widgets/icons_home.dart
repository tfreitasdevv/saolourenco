import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IconsHome extends StatelessWidget {
  final String icone;
  final Function funcao;

  const IconsHome({Key key, this.icone, this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: CachedNetworkImage(
          color: Colors.white,
          imageUrl: icone,
        ),
        iconSize: 20,
        onPressed: funcao);
  }
}
