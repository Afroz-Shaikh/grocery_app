import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String name;
  final double cost;
  final String imageUrl;
  final bool available;
  final String desc;
  final String category;
  bool isFavorite;

  Product({
  required this.id,
  required this.name,
  required this.available,
  required this.category,
  required this.cost,
  required this.desc,
  required this.imageUrl,
   this.isFavorite=false,
  });

void toggleFavoriteStatus(){
  isFavorite = !isFavorite;
  notifyListeners();
}


}
