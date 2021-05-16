import 'package:flutter/material.dart';

class AssetShow extends StatefulWidget {
  @override
  _AssetShowState createState() => _AssetShowState();
}

class _AssetShowState extends State<AssetShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asset Örneği')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Deneme'),
            Image(image: AssetImage('assets/images/logo1.jpg')),
            Image(image: AssetImage('assets/images/wp1.jpg')),
            Image(image: AssetImage('assets/images/logo2.jpg')),
            Image(image: AssetImage('assets/images/wp2.jpg')),
            Image(image: AssetImage('assets/images/logo3.png')),
            Image(image: AssetImage('assets/images/wp3.jpg')),
          ],
        ),
      ),
    );
  }
}
