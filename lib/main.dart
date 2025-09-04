import 'package:counter_provider/app.dart';
import 'package:counter_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
     child: const CounterAppProvider(),
    )
  );
}