import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7,
              sigmaY: 7,
            ),
            child: Container(
              height: 100,
              color: Colors.transparent,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.red,
            ),
            height: 50,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.hardEdge,
        backgroundColor: Colors.blue.withOpacity(.3),
        onPressed: () {},
        tooltip: 'Increment',
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7,
              sigmaY: 7,
            ),
            child: Center(
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
