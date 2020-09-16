import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouritesState();
  }
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'virtual_maanger',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              height: 77,
              color: Colors.white,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text("Favourites"),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                      child: Image.asset(
                    "assets/favimg1.jpg",
                    height: 718.0,
                  )),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Container(
                      child: Image.asset(
                    "assets/favimg2.jpg",
                    height: 718.0,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
