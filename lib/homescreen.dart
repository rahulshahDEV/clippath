import 'package:clippath/customclipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Transform.flip(
        flipY: true,
        child: ClipPath(
          clipper: Clipper(),
          child: Container(
            height: 100,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
