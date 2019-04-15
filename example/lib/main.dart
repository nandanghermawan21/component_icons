import 'package:flutter/material.dart';
import 'package:component_icons/component_icons.dart';

void main() {
  runApp(new FontAwesomeGalleryApp());
}

class FontAwesomeGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Font Awesome Flutter Gallery',
      theme: new ThemeData.light().copyWith(
        iconTheme: new IconThemeData(size: 36.0, color: Colors.black87),
        textTheme: new TextTheme(
          body1: new TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      home: new FontAwesomeGalleryHome(),
    );
  }
}

class FontAwesomeGalleryHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FontAwesomeGalleryHomeState();
}

class FontAwesomeGalleryHomeState extends State<FontAwesomeGalleryHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Font Awesome"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesome.intSolid(FontAwesomeId.fa_arrow_alt_circle_down),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(FontAwesome.intRegular(
                  FontAwesomeId.fa_arrow_alt_circle_down)),
              SizedBox(
                width: 10,
              ),
              Icon(
                  FontAwesome.intLight(FontAwesomeId.fa_arrow_alt_circle_down)),
              SizedBox(
                width: 10,
              ),
              Icon(FontAwesome.intBrands(FontAwesomeId.fa_uber)),
            ],
          ),
        ));
  }
}
