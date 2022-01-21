import 'package:flutter/material.dart';
import 'package:fruits_app/Providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  // const ProductDetail({ Key? key }) : super(key: key);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =ModalRoute.of(context)?.settings.arguments as String;
final loadedProduct=Provider.of<Products>(context).items.firstWhere((prod)=>prod.id==productId);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
// title: productId,
title: Text(loadedProduct.name,style: TextStyle(color: Colors.black),),
      ),
      
    );
  }
}