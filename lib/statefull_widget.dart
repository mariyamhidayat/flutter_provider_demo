import 'package:flutter/material.dart';
class State_Full extends StatefulWidget {
  const State_Full({super.key});
// state full widget its user interactive and mutable 

  @override
  State<State_Full> createState() => _State_FullState();
}

class _State_FullState extends State<State_Full> {
  int count=10;
  @override
  // widget build
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("title: StateFull Widget"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(count.toString(),style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        count++;
        print(count++);
        setState(() {// rebuild all widgets its disadvantage because its time consuming if you want only change one widget buts its rebuild all widgets so pressure the RAM snd sometime its hang
          }  ); 
          
        
       
      },child: Icon(Icons.add),
      ),
    );
  }
}
