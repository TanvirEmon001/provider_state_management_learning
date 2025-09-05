import 'package:counter_provider/ui/screens/add_to_cart_screen.dart';
import 'package:counter_provider/ui/screens/counter_home_screen.dart';
import 'package:flutter/material.dart';
class CounterAppProvider extends StatelessWidget{
  const CounterAppProvider({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: AddToCartScreen(),
    );
  }

}