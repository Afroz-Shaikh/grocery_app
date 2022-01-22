import 'package:flutter/material.dart';
import 'package:fruits_app/views/productview.dart';
import 'package:flutter/cupertino.dart';
import '../Providers/products.dart';
import 'package:provider/provider.dart';

enum FilterOptions{
  Premium,
  All,
}

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _state=true;
    
  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context);
    bool state=true;
    
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
            Container(
              height: 50,
              child: Row(
                children: [
                  PopupMenuButton(
                    onSelected: (FilterOptions selectedValue){
                      if(selectedValue == FilterOptions.Premium){
                        //
                        productsContainer.showPremiumOnly();
                        

                      }
                      else{
                        //
                        productsContainer.showAll();

                      }


                    },
                    icon: Icon(Icons.filter),
                    itemBuilder: (_)=> [
                      PopupMenuItem(child: Text('Only Premium'),value: FilterOptions.Premium,),
                      PopupMenuItem(child: Text('Show All'),value: FilterOptions.All,)

                    ],
                  ),
                  // ToggleButtons(children: children, isSelected: isSelected)
                  // Switch(value: value, onChanged: (value)=>setState(()=>this.value))
                ],
              ),
            ),
            
            ProductView(),
          ],
        ),
        
      ),
    );
  }
}

