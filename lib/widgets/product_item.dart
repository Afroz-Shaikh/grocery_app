import 'package:flutter/material.dart';
import 'package:fruits_app/models/product.dart';
import 'package:fruits_app/views/product_detail.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
//    final String id;
//    final String name;
//    final double cost;
//    final String imageUrl;

// ProductItem(this.id,this.imageUrl,this.cost,this.name);

  // const ProductItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product =Provider.of<Product>(context);
    // var Image =imageUrl; 
    return GridTile(
      child: Card(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetail.routeName, arguments:product.id );
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(product.imageUrl),scale: 0.3,fit: BoxFit.cover)
            ),
          // child: Text(name),
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: GestureDetector(onTap: (){
          product.toggleFavoriteStatus();
        },child: Icon(
          product.isFavorite ? Icons.favorite : Icons.favorite_border,color: Colors.black,
          )),onPressed: (){},),
        title: Text('\$'+product.cost.toString(),textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
        trailing: IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,),onPressed: (){},),
        
      ),
      header: GridTileBar(
        title: Text(product.name),
      ),
    );
  }
}