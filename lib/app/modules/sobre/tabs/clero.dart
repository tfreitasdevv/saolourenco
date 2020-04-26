import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class Clero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
        child: FutureBuilder<DocumentSnapshot>(
            future:
                Firestore.instance.collection('clero').document('paroco').get(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container(
                    child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                ));
              } else {
                String _historia = snapshot.data['historia'];
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Pároco",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'CinzelDecorative',
                                fontSize:
                                    MediaQuery.of(context).size.width > 400
                                        ? 32
                                        : 24),
                          ),
                        ),
                        SizedBox(height: 16),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            snapshot.data['imagem'],
                            height: MediaQuery.of(context).size.width / 2,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            snapshot.data['nome'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width > 400
                                        ? 24
                                        : 18),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Data de ordenação: ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 400
                                            ? 20
                                            : 14),
                              ),
                              Text(
                                snapshot.data['data_ordenacao'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 400
                                            ? 20
                                            : 16),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          child: Text(
                            _historia,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width > 400
                                        ? 20
                                        : 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }));
  }
}
