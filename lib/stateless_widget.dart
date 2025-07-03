import 'package:flutter/material.dart';
class State_less extends StatelessWidget {
   const State_less({super.key});


//int x=0; // variable cannot change value in stateless which means jo cheez ak dafa build ho jaay aap os ko change nhi kr skte
  //so use final keyword

  final x=10;
  // so final keyword create error in floatingActionButton x++ because its cannot change value so remove the const in main.dart
  // its immutable cannot change the state
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(  // its work in tree so  Scaffold its parent and body child then....
      appBar: AppBar(
        title: Text("stateless Widget"),


      ),
        body:Column(
          children: [
            Container(
              child: Text(x.toString(),style: TextStyle(fontSize: 30),),
            )
          ],



      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        //x++;



      }),
    );
  }
}
