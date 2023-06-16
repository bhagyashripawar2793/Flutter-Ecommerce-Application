import 'package:badges/badges.dart';

import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_ecommerce_app_usecase/services/product_services.dart';
import 'package:flutter_ecommerce_app_usecase/views/product_details_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';

import 'package:provider/provider.dart';

import '../models/product.dart';

import 'my_cart_screen.dart';

class ProductsCatalog extends StatefulWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  State<ProductsCatalog> createState() => _ProductsCatalogState();
}

class _ProductsCatalogState extends State<ProductsCatalog> {
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
        title: const Text('Product Listing'),
    actions: [
    GestureDetector(
    child: Padding(
    padding: const EdgeInsets.only(right: 12.0, top: 8.0),
    child: Badge(
    //    toAnimate: false,
    child: const Icon(Icons.shopping_cart),
    badgeContent: Text(
    '${context.watch<UserCart>().products.length}',
    style: const TextStyle(
    fontWeight: FontWeight.bold, color: Colors.white),
    ),
    ),
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
              leading: Image.network(products[index].imageUrl),
              title: Text(products[index].productName),
              subtitle: Text(products[index].price.toString()),
              trailing: AddIToCartButton(product: products[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const ProductDetails()),
                );
              },
            ),
          )
      );
    }
    ),
    );
    }
  }

  class AddIToCartButton extends StatefulWidget {
  final Product product;

  const AddIToCartButton({Key? key, required this.product}) : super(key: key);

  @override
  State<AddIToCartButton> createState() => _AddIToCartButtonState();
}

class _AddIToCartButtonState extends State<AddIToCartButton> {
  @override
  Widget build(BuildContext context) {
  var isProductExistsInCart = context.select<UserCart, bool>(
  (usercart) => usercart.products.contains(widget.product),
  );

  return isProductExistsInCart
  ? const Icon(Icons.check)
      : ElevatedButton(
  onPressed: () {
  context.read<UserCart>().addProductToCart(widget.product);
  },
  child: const Text('Add to cart'),
  );
  }
  }
