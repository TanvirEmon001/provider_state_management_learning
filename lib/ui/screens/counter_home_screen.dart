import 'package:counter_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterHomeScreenState();
  }

}

class _CounterHomeScreenState extends State<CounterHomeScreen>{
  @override
  Widget build(BuildContext context){
    print("hello");

    final counter = context.watch<CounterProvider>();// this will rebuild the entire widget/
    // this state management is perfect for small projects where rebuilding isn’t expensive.



    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(counter.count.toString(), style: TextStyle(
              fontSize: 50
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              ElevatedButton(onPressed: (){
                counter.decrement();
              }, child: Text("Decrement")),
              ElevatedButton(onPressed: (){
                counter.increment();
              }, child: Text("Increment")),
            ],
          )
        ],
      ),
    );
  }
}