import 'package:flutter/material.dart';

void mani() => runApp(Favorite());

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Favorite"),
    );
  }
}
