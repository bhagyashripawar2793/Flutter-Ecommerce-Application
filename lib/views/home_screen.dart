
import 'package:badges/badges.dart';

import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_ecommerce_app_usecase/models/product.dart';
import 'package:flutter_ecommerce_app_usecase/services/product_services.dart';
import 'package:flutter_ecommerce_app_usecase/views/my_cart_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/product_details_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/product_listing_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';
import 'package:flutter_ecommerce_app_usecase/widgets/bottom_button_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [];


  @override
  void initState() {
    super.initState();
    products = ProductService().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0, top: 8.0),
              child: const Icon(Icons.search),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (builder) => const MyCartScreen()),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.brown.shade100,
                  child:
                  ListTile(
                //    leading: Image.network(products[index].imageUrl),
                    title: Text(products[index].categories),
                 //   subtitle: Text(products[index].price.toString()),
                 //   trailing: AddIToCartButton(product: products[index]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const ProductsCatalog()),
                      );
                    },
                  ),
                )
            );
          }
      ),
    );
  }

























/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),
          actions: [
          GestureDetector(

          child: Padding(
            padding: const EdgeInsets.only(right: 12.0, top: 8.0),
        child: Badge(
          child: const Icon(Icons.search),

        ),
          ),

    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (builder) => const ProductDetails()),
      );
    },
          )
          ]
      ),
      body: Column(
        children: [const SizedBox(height: 20.0),
          Text('Categories',
            style: const TextStyle(fontSize: 24.0, color: Colors.black),
          ),
          const SizedBox(height: 30.0),
          BottomButton(
              buttonText: 'Next',
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const ProductsCatalog()),
                );
              })
        ],
      ),

    );
  }*/
}
