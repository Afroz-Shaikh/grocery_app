import 'package:flutter/material.dart';
import 'package:fruits_app/views/Home.dart';

import './views/product_detail.dart';
import './Providers/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>Products(),
      child: MaterialApp(
        home: HomeScreen(),
        routes: {
          ProductDetail.routeName: (context) => ProductDetail(),
    
        },
      ),
    );
  }
}