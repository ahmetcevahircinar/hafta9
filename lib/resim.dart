import 'package:flutter/material.dart';

class Resim extends StatefulWidget {
  Resim({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResimState createState() => _ResimState();
}

class _ResimState extends State<Resim> {
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hafta 9',
            ),
            Image.network("https://www.selcuk.edu.tr/Tasarim/img/Selcuklogo1975.png"),
            Image.network('https://picsum.photos/250?image=9'),
            //Image.network('https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),

          ],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
