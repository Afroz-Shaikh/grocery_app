import 'package:flutter/material.dart';
import 'package:fruits_app/views/productview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Fruits & Vegetables",style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined),title: Text('profile')),

          
        ],
        
      ),
        body: Column(
          children: [
            //Container(),
            
            ProductView(),
          ],
        ),
        
      ),
    );
  }
}