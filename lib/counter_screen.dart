import 'package:flutter/material.dart';
import 'package:fluttter_provider_demo/Counter_provider.dart';
import 'package:provider/provider.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // initstate() function run firstly
  // @override
  // void initState(){
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    print('build');//agr hum consumer use na kry tw phr b yeh sare widget ko rebuild krta ha is liye hum ne listen false kiya ha
    // instance
    final countProvider=Provider.of<CounterProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter_Screen"),
      ),
      body: Center(
        child:Consumer<CounterProvider>(builder: (context,value,child){
          return Text(countProvider.count.toString(),style: TextStyle(fontSize: 30),);
        }) ,
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        countProvider.setCount();
      },
      child: Icon(Icons.add),),
    );
  }
}

