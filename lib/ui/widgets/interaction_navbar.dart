import 'package:flutter/material.dart';

class CustomInteractionBar extends StatelessWidget {
  const CustomInteractionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 30,
      child: 
    Column(
      children: [
        IconButton(icon: Icon(Icons.favorite_border),onPressed: (){

        }),
         IconButton(icon: Icon(Icons.comment),onPressed: (){

        }),
         IconButton(icon: Icon(Icons.share),onPressed: (){

        })
      ],
    )
    );
  }
}