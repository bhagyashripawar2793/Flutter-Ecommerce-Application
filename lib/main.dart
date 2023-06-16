import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_usecase/views/home_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/product_listing_screen.dart';
import 'package:flutter_ecommerce_app_usecase/views/user_cart_mixin.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserCart())],
      child: const SMDemos(),
    ),
  );
}

class SMDemos extends StatelessWidget {
  const SMDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
