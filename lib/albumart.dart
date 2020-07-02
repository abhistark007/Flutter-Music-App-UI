import 'package:flutter/material.dart';
import 'package:music_ui_1/colors.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 200,
      margin: EdgeInsets.symmetric(horizontal:20,vertical:40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20)
          ,child: Image.asset("images/img.png",fit: BoxFit.fill,)),
      ),
      decoration: BoxDecoration(color: primaryColor,
      boxShadow: [
         BoxShadow(color: darkPrimaryColor,
          offset: Offset(20,8),
          spreadRadius: 3,
          blurRadius: 25,),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3,-4),
            spreadRadius: -2,
            blurRadius: 20
          ),
      ],
      borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}