import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/plugins/page_transformer/data.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/plugins/page_transformer/intro_page_item.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/plugins/page_transformer/page_transformer.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class IntroPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t1,
        centerTitle: true,
        title: Text("Pastorais e Movimentos"),
      ),
      backgroundColor: t1,
      body: Center(
        child: SizedBox.fromSize(
          size: Size.fromHeight(MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top-50),
          child: PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: sampleItems.length,
                itemBuilder: (context, index) {
                  final item = sampleItems[index];
                  final pageVisibility =
                      visibilityResolver.resolvePageVisibility(index);

                  return IntroPageItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
