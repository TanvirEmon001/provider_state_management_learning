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

    final counter = context.read<CounterProvider>();// this will rebuild only the widget which i will wrap into Consumer/




    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
            builder: (context, counter, child){
              return Text("${counter.count}", style: TextStyle(
                  fontSize: 50
              ),);
            },
          ),
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