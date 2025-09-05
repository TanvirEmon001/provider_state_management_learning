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

    final counter = context.read<CounterProvider>();




    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
            builder: (_, counter, __){
              return Text("${counter.count}", style: TextStyle(
                  fontSize: 50
              ),);
            },
          ),
          Consumer<CounterProvider>(
            builder: (_, counter, __) => Text(
              counter.count.isEven ? 'Even ✅' : 'Odd ❌',
              style: const TextStyle(fontSize: 20),
            ),
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