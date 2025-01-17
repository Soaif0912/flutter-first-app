import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}


class ProductController extends GetxController {
  // Observable list of products
  var products = <Product>[].obs;

  // Load products (Mock data for now)
  void loadProducts() {
    products.value = [
      Product(id: 1, name: 'Laptop', price: 1200.0),
      Product(id: 2, name: 'Smartphone', price: 800.0),
    ];
  }

  // Add a new product
  void addProduct(Product product) {
    products.add(product);
  }
}



class ProductPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: productController.loadProducts,
            child: Text('Load Products'),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  final product = productController.products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('\$${product.price}'),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
