import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState(){
    return _AddToCartScreenState();
  }

}

class _AddToCartScreenState extends State<AddToCartScreen>{



  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          Consumer<CartProvider>(
            builder: (context, cart, child){
              return Text(cart.listLength.toString());
            },
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Apple"),
            trailing: ElevatedButton(
              onPressed: () => context.read<CartProvider>().addItem("Apple"),
              child: const Text("Add"),
            ),
          ),
          ListTile(
            title: const Text("Banana"),
            trailing: ElevatedButton(
              onPressed: () => context.read<CartProvider>().addItem("Banana"),
              child: const Text("Add"),
            ),
          ),
        ],
      ),
    );
  }
}



