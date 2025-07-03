import 'package:flutter/material.dart';
import 'package:fluttter_provider_demo/Example_Provider.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_provider_demo/Example_Provider';
class ExampleProvider extends StatefulWidget {
  const ExampleProvider({super.key});

  @override
  State<ExampleProvider> createState() => _ExampleProviderState();
}

class _ExampleProviderState extends State<ExampleProvider> {
  double value=1.0;
  @override
  Widget build(BuildContext context) {
    //instance
    final provider= Provider.of<Example_Provider>(context , listen: true);
    return Scaffold(
      body:Column(
        children: [
          Consumer<Example_Provider>(builder:(context,value,child){
            return Slider(
                min:0,
                max:1,
                value: value.value, onChanged: (val){
              value.setValue(val);
              // value=val;

            });
          }),
    Consumer<Example_Provider>(builder:(context,value,child){
     return  Row(
        children:[
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(provider.value),
              ),
              child: Center(
                child: Text('container 1'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(provider.value),
              ),
              child: Center(
                child: Text('container 1'),
              ),
            ),
          )

        ],
      );

    }),

        ],
      ),
    );
  }
}
