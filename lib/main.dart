import 'package:counter_provider/app.dart';
import 'package:counter_provider/providers/cart_provider.dart';
import 'package:counter_provider/providers/counter_provider.dart';
import 'package:counter_provider/providers/to_do_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => ToDoProvider(),
     child: const CounterAppProvider(),
    )
  );
}