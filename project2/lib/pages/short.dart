import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

// Here we take care of short click

class ShortClick extends StatelessWidget {
  final String image;
  final String pathIMDb;

  ShortClick({Key? key, required this.image, required this.pathIMDb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          child: GestureDetector(
            onTap: () async {
              String name = 'Test';
              html.window.open(pathIMDb,
                  name); // Since my emulator doesn`t work I can`t test the canLaunch but the html.window.open is working in FLutter Web
              if (await canLaunch(pathIMDb)) {
                await launch(pathIMDb); // forceWebView = true
              } else {
                throw 'Could not launch $pathIMDb';
              }
            },
            child: Container(
              height: 500,
              width: 400,
              margin: EdgeInsets.all(10),
              child: Image.network(image, fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
