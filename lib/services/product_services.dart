import 'package:flutter_ecommerce_app_usecase/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    List<Product> products = [];

    products.add(
      Product(
          productID: 1,
          productName: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
          price:  109.95,
          imageUrl: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 2,
          productName: 'Mens Casual Premium Slim Fit T-Shirts ',
          price: 22.3,
          imageUrl:
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 3,
          productName: 'Mens Cotton Jacket',
          price: 55.99,
          imageUrl: 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 4,
          productName: 'Mens Casual Slim Fit',
          price: 15.99,
          imageUrl:
              'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 5,
          productName:
              "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
          price: 695.55,
          imageUrl:
              'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 6,
          productName: 'Solid Gold Petite Micropave',
          price: 168.99,
          imageUrl:
              'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 7,
          productName: '"White Gold Plated Princess',
          price: 9.99,
          imageUrl:
              'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
          categories: "Men"),
    );

    products.add(
      Product(
          productID: 8,
          productName: 'Pierced Owl Rose Gold Plated Stainless Steel Double',
          price: 15.99,
          imageUrl:
              'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg',
          categories: "Women"),
    );

     products.add(
      Product(
          productID: 9,
          productName: 'WD 2TB Elements Portable External Hard Drive - USB 3.0 ',
          price: 99.99,
          imageUrl: 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg',
          categories: "Men"),
    );

     products.add(
      Product(
          productID: 10,
          productName: 'WD 2TB Elements Portable External Hard Drive - USB 3.0 ',
          price: 99.99,
          imageUrl: 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg',
          categories: "Men"),
    );

     products.add(
      Product(
          productID: 11,
          productName: 'WD 2TB Elements Portable External Hard Drive - USB 3.0 ',
          price: 108.09,
          imageUrl: 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg',
          categories: "Men"),
    );
    return products;
  }
}
