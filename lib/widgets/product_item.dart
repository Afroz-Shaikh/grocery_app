import 'package:flutter/material.dart';
import 'package:fruits_app/models/product.dart';
import 'package:fruits_app/views/product_detail.dart';



class ProductItem extends StatelessWidget {
   final String id;
   final String name;
   final double cost;
   final String imageUrl;

ProductItem(this.id,this.imageUrl,this.cost,this.name);

  // const ProductItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Image =imageUrl; 
    return GridTile(
      child: Card(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetail.routeName, arguments:id );
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl),scale: 0.3,fit: BoxFit.cover)
            ),
          // child: Text(name),
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,),onPressed: (){},),
        title: Text('\$'+cost.toString(),textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
        trailing: IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,),onPressed: (){},),
        
      ),
      header: GridTileBar(
        title: Text(name),
      ),
    );
  }
}