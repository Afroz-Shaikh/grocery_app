import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  // const ProductDetail({ Key? key }) : super(key: key);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
// title: productId,
      ),
      
    );
  }
}