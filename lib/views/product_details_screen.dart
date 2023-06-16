import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_usecase/models/product.dart';
import 'package:flutter_ecommerce_app_usecase/services/product_services.dart';
import 'package:flutter_ecommerce_app_usecase/views/product_listing_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';
import 'package:flutter_ecommerce_app_usecase/widgets/bottom_button_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Product> products = [];
  late final Product product;

  @override
  void initState() {
    super.initState();
    products = ProductService().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details"),
      ),
      body: Column(
        children: [const SizedBox(height: 20.0),
          Text('This is Product Details Page',
            style: const TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          const SizedBox(height: 30.0),
          BottomButton(
            /*  onPressed: () {
                context.read<UserCart>().addProductToCart(widget.product);
              },*/
              buttonText: 'ADD TO CART',

              onTap: () {
                Navigator.push(
                 context,
                   // context.read<UserCart>().addProductToCart(widget.product),
                  MaterialPageRoute(builder: (builder) => const ProductsCatalog()),
                );
              })
        ],
      ),

    );
  }
}

