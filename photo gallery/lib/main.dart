import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Cars'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: new ListView(children: <Widget>[
          CarWidget("Bmw", "M3",
              "https://scontent.fktm6-1.fna.fbcdn.net/v/t1.0-9/s960x960/82643918_1470060793174014_3660768615436648448_o.jpg?_nc_cat=101&_nc_eui2=AeHw9WK13pTK-rP-r4DT_MxqMMsb9q-WA3EfoxXjbQt_2vgpLhMbQy4_KJtksooZBjKkzzVxJseU4k6mk4PIcQuNCCnN6aJtFP4MJfeE3ipDIA&_nc_ohc=fp5KPu16ewMAQnxcPyKo9jB8d48zxcg2VOMy0hSP9a99dkQUCuyg5L3pg&_nc_ht=scontent.fktm6-1.fna&_nc_tp=1&oh=61929980cb26ee94639a35bcf2beaa81&oe=5E98481A"),
          CarWidget("Nissan", "GTR",
              "https://scontent.fktm6-1.fna.fbcdn.net/v/t1.0-9/s960x960/82643918_1470060793174014_3660768615436648448_o.jpg?_nc_cat=101&_nc_eui2=AeHw9WK13pTK-rP-r4DT_MxqMMsb9q-WA3EfoxXjbQt_2vgpLhMbQy4_KJtksooZBjKkzzVxJseU4k6mk4PIcQuNCCnN6aJtFP4MJfeE3ipDIA&_nc_ohc=fp5KPu16ewMAQnxcPyKo9jB8d48zxcg2VOMy0hSP9a99dkQUCuyg5L3pg&_nc_ht=scontent.fktm6-1.fna&_nc_tp=1&oh=61929980cb26ee94639a35bcf2beaa81&oe=5E98481A"),
          CarWidget("Nissan", "Sentra",
              "https://scontent.fktm6-1.fna.fbcdn.net/v/t1.0-9/s960x960/82643918_1470060793174014_3660768615436648448_o.jpg?_nc_cat=101&_nc_eui2=AeHw9WK13pTK-rP-r4DT_MxqMMsb9q-WA3EfoxXjbQt_2vgpLhMbQy4_KJtksooZBjKkzzVxJseU4k6mk4PIcQuNCCnN6aJtFP4MJfeE3ipDIA&_nc_ohc=fp5KPu16ewMAQnxcPyKo9jB8d48zxcg2VOMy0hSP9a99dkQUCuyg5L3pg&_nc_ht=scontent.fktm6-1.fna&_nc_tp=1&oh=61929980cb26ee94639a35bcf2beaa81&oe=5E98481A"),
        ]));
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc) : super();
  final String make;
  final String model;
  final String imageSrc;
  @override
Widget build(BuildContext context) {
return Padding(
padding: EdgeInsets.all(20.0),
child: Container(
decoration: BoxDecoration(border: Border.all()), padding:
EdgeInsets.all(20.0),
child: Center(
child: Column(children: <Widget>[
Text("$make",style: TextStyle(fontSize: 24.0)),
Padding(
padding: EdgeInsets.only(top: 20.0), child:
Image.network(imageSrc)) ]))));
}
}