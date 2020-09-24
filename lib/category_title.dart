import 'package:flutter/material.dart';
class category extends StatelessWidget {
  bool active;
  String title;
  category({Key key,this.title,this.active=false}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,40,20,20),
      child: Text("$title",style: TextStyle(color:active==true?Colors.redAccent:Colors.grey.shade800,fontSize: 20),),
    );
  }
}
