import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
const SquareTile({ Key? key, required this.imagePath }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        child: Image.asset(imagePath, height: 50,),
      ),
    );
  }
}