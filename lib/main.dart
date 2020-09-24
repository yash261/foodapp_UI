import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_app/category_title.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
void main(){
  runApp(MaterialApp(
    title: "Food App",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOOD APP",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: false,
        backgroundColor: Colors.redAccent,

      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: null,backgroundColor: Colors.redAccent,focusColor: Colors.blue,),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
             Align(
               alignment: Alignment.topRight,
               child: Icon(Icons.menu,color: Colors.black,),
             ),
            Text("Simple way to find \nTasty food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  category(title: "All",active:true,),
                  category(title: "Chinese",),
                  category(title: "Italian",),
                  category(title: "Mexican",),
                  category(title: "Burger",)
                ],
              ),

            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            )),


          ],
        ),

      ),
    );
  }
}
