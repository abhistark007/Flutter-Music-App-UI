import 'package:flutter/material.dart';
import 'package:music_ui_1/colors.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20),
      height: 90,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarItem(icon: Icons.arrow_back_ios),
          Text("Playing Now",style: TextStyle(fontSize: 20,color:darkPrimaryColor,fontWeight: FontWeight.w500),),
          NavBarItem(icon: Icons.list,),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  const NavBarItem({Key key,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
          offset: Offset(5,10),
          spreadRadius: 3,
          blurRadius: 10,),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3,-4),
            spreadRadius: -2,
            blurRadius: 20
          ),
        ]
      ),
      child: Icon(icon,color: darkPrimaryColor,),
    );
  }
}
