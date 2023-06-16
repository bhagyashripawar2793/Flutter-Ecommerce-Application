import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductDetailsService {
  late String productID;
  late String productName;
  late String price;
  late String imageUrl;

  Future<void> getProductDetails() async {
    var uri = Uri.parse(
        'https://fakestoreapi.com/products');

    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = response.body;

      productID = jsonDecode(data)['weatherObservation']['productID'];
      productName = jsonDecode(data)['weatherObservation']['productName'];
      price = jsonDecode(data)['weatherObservation']['price'].toString();
      imageUrl = jsonDecode(data)['weatherObservation']['imageUrl'];
    }
  }
}
