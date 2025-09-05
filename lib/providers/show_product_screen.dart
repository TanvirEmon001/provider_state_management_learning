import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({super.key});

  @override
  State<ShowProductScreen> createState(){
    return _ShowProductScreenState();
  }
}

class _ShowProductScreenState extends State<ShowProductScreen>{
  @override
  Widget build(BuildContext context){

    final List cartList = context.read<CartProvider>().items;

    return Scaffold(
      appBar: AppBar(
        title: Text("Total Cart: ${cartList.length}"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index)=> ListTile(
            title: Consumer<CartProvider>(
                builder: (context, cart, child){
                  return Text(cartList[index]);
                },
            ),
          ),
        ),
      ),
    );
  }
}