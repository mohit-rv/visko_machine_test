import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var response = await http.get(Uri.parse('https://fakestoreapi.com/products/2'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body) as List;
        productList.value = jsonData.map((product) => Product.fromJson(product)).toList();
        print(productList.length);
      }
    } catch (e) {
      print("Error fetching products: $e");
    } finally {
      isLoading(false);
    }
  }
}
