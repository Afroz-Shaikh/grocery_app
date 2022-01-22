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
// final productsi = Prodvider.of<Products>(context).items

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
// title: productId,
title: Text(loadedProduct.name,style: TextStyle(color: Colors.black),),
      ),
      body: Column(
children: [
  ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
      child: Image.asset(loadedProduct.imageUrl)
      // Image.image: Image.asset(loadedProduct.imageUrl),
      ),
    ),
  
  ClipRRect(
    child: Expanded(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Center(
              child: Text(loadedProduct.name),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price')
                  ,
                  Text(loadedProduct.cost.toString()),
                ],
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(loadedProduct.desc),
                  Text(loadedProduct.category),
                  
                ],
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text('Availablility'),
                  loadedProduct.available ? Icon(Icons.check) : Icon(Icons.error)
                  
                ],
              ),
              
            ),
// Spacer(),
            Card(
              color: Colors.green,
              child: Container(child: Center(child: Text('Buy now',style: TextStyle(color: Colors.white,fontSize: 50),)),
              height: 50,
              width: double.infinity,),
              )

            
            // Text(loadedProduct.)
          ],
        ),
    
      ),
    ),
  )
],



      ),
    );
  }
}