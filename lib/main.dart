import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      title: const Center(
        child: Text("I am poor"),
      ),
      backgroundColor: Colors.deepOrange,
    ),
    body: const Center(
      child: Image(
        image: AssetImage('images/coal.png'),
      ),
    ),
  ),
),);

