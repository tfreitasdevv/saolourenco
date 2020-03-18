import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/horarios/widgets/horario_tile.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'horarios_controller.dart';

class HorariosPage extends StatefulWidget {
  final String title;
  const HorariosPage({Key key, this.title = "Horários das Missas"})
      : super(key: key);

  @override
  _HorariosPageState createState() => _HorariosPageState();
}

class _HorariosPageState
    extends ModularState<HorariosPage, HorariosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t2,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    MediaQuery.of(context).size.height > 1920 ? bg4k : bg2k),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Domingos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width < 400 ? 18 : 22,
                      fontFamily: 'CinzelDecorative'),
                ),
              ),
              
              HorarioTile(
                horario: '8:00',
              ),
              HorarioTile(
                horario: '10:30',
              ),
              HorarioTile(
                horario: '18:30',
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sábados",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width < 400 ? 18 : 22,
                      fontFamily: 'CinzelDecorative'),
                ),
              ),
              HorarioTile(
                horario: '8:00',
              ),
              HorarioTile(
                horario: '16:00 (com crianças)',
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Terças, Quintas e Sextas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width < 400 ? 18 : 22,
                      fontFamily: 'CinzelDecorative'),
                ),
              ),
              HorarioTile(
                horario: '8:00',
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Quartas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width < 400 ? 18 : 22,
                      fontFamily: 'CinzelDecorative'),
                ),
              ),
              HorarioTile(
                horario: '18:00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
