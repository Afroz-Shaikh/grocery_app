import 'package:flutter/material.dart';
import 'package:fruits_app/views/productview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart,color: Colors.black,),
          onPressed: (){},
          backgroundColor: Color(0xffFFE346),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Color(0xffF5F6F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text("Grocy",style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,))
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(backgroundColor: Colors.white,
          fixedColor: Color(0xffFFE346),
          
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined),title: Text('profile')),
        
            
          ],
          
              ),
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