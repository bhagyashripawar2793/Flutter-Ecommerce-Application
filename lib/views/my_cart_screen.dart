import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_usecase/views/checkout_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';
import 'package:flutter_ecommerce_app_usecase/widgets/bottom_button_widget.dart';

import 'package:provider/provider.dart';
class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<UserCart>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Column(
        children: [CartItems(cart: cart),
        /*  SizedBox(
            height: 500,
            child: CartItems(cart: cart),
          ),*/
          const SizedBox(height: 10.0),
          Text(
            'Total Price of the Cart : \nRs. ${cart.totalPrice} /-',
            style: const TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          const SizedBox(height: 10.0),
          BottomButton(
              buttonText: 'Checkout',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const CheckoutPage()),
                );
              })
        ],
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  final UserCart cart;

  const CartItems({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart.products.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return (Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.brown.shade100,
              child: ListTile(
                leading: Image.network(cart.products[index].imageUrl),
                title: Text(cart.products[index].productName),
                subtitle: Text(cart.products[index].price.toString()),
                trailing: ElevatedButton(
                  onPressed: () {
                    cart.removeProductFromCart(cart.products[index]);
                  },
                  child: const Icon(Icons.remove_shopping_cart),
                ),
              ),
            ),
          )));
        });
  }
}
