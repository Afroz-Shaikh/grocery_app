import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_app/Providers/products.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:fruits_app/Providers/products.dart';


class ProductView extends StatelessWidget {
  

  

   

  @override
  Widget build(BuildContext context) {
     
    //bool isPrem = false;
    final productsData =Provider.of<Products>(context);
    final products =  productsData.items;
    // final pproucts = productsData.PremiumItems;
    return Expanded(
      // child: 




      child: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: products.length,
        
        itemBuilder: (context,i)=> ChangeNotifierProvider(
          create: (context) =>products[i],child: ProductItem(
            // products[i].id,products[i].imageUrl,products[i].cost,products[i].name
            )),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/3,crossAxisSpacing: 10,mainAxisSpacing:10 ),
      ),
    );
  }
}

class ProductView2 extends StatelessWidget {
  const ProductView2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData =Provider.of<Products>(context);
    final products = productsData.PremiumItems;
    return Scaffold(
      appBar: AppBar(title: Text('Premium'),),
      body: Expanded(
      // child: 




      child: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: products.length,
        
        itemBuilder: (context,i)=> ProductItem(
          // products[i].id,products[i].imageUrl,products[i].cost,products[i].name
          ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/3,crossAxisSpacing: 10,mainAxisSpacing:10 ),
      ),
    ),
    );
  }
}





