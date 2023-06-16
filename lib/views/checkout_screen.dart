import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_usecase/views/my_cart_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';
import 'package:flutter_ecommerce_app_usecase/widgets/bottom_button_widget.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<UserCart>();
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          //SummeryItems(cart: cart),
            SizedBox(
            height: 500,
            child: SummeryItems(cart: cart),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Total Cart Value : \nRs. ${cart.totalPrice} /-',
            style: const TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          const SizedBox(height: 10.0),
          BottomButton(
              buttonText: 'SUBMIT ORDEDR',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const CheckoutPage()),
                );
              })
        ],
      ),
      );

    //);
  }
}

class SummeryItems extends StatelessWidget {
  final UserCart cart;

  const SummeryItems({Key? key, required this.cart}) : super(key: key);

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
                 /*   trailing: ElevatedButton(
                      onPressed: () {
                        cart.removeProductFromCart(cart.products[index]);
                      },
                      child: const Icon(Icons.remove_shopping_cart),
                    ),*/
                  ),
                ),
              )));
        });
  }
}


