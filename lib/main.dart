import 'package:flutter/material.dart';
import 'package:hafta9/asset_show.dart';
import 'package:hafta9/file_download_view.dart';
import 'package:hafta9/file_operations.dart';
import 'package:hafta9/resim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hafta 9'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FileOperationsScreen()));
                  },
                  child: Text("Dosyaya Yazma ve Okuma İşlemleri")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FileDownloadView()));
                  },
                  child: Text("PDF ve MP4 indirme ve gösterme")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AssetShow()));
                  },
                  child: Text("Assets Örneği")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Resim()));
                  },
                  child: Text("Resim")),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
