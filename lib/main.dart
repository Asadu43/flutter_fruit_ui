import 'package:flutter/material.dart';
import 'package:flutter_fruit_ui/Fruits.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
         children: [
           Container(
              padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0,bottom: 10.0),
             width: MediaQuery.of(context).size.width,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 40.0,
                   width: 40.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     image: DecorationImage(
                       image: AssetImage("images/muree.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 IconButton(icon: Icon(Icons.menu,color: Colors.black,
                 size: 27.0,), onPressed: (){}),
               ],
             ),
           ),
           Padding(padding: EdgeInsets.only(top: 20.0),
           child: TabBar(
             indicatorColor: Colors.transparent,
             isScrollable: true,
             unselectedLabelColor: Colors.grey.withOpacity(0.6),
             labelColor: Colors.black,
             controller: controller,
             tabs: [
               Tab(
                 child: Text('Fruits',style: TextStyle(
                    fontSize: 43.0,
                   fontWeight: FontWeight.bold,
                 ),),
               ),
               Tab(
                 child: Text('Breads',style: TextStyle(
                   fontSize: 43.0,
                   fontWeight: FontWeight.bold,

                 ),),
               ),
               Tab(
                 child: Text('Drinks',style: TextStyle(
                   fontSize: 43.0,
                   fontWeight: FontWeight.bold,

                 ),),
               ),
             ],
           ),
           ),
           Container(
             height: MediaQuery.of(context).size.height -200,
             child: TabBarView(
               controller: controller,
               children: [
                 FruitsPage(),
                 FruitsPage(),
                 FruitsPage(),


               ],
             ),
           ),

         ],
      ),

      bottomNavigationBar: Material(
        child: Container(
          height: 60.0,

          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text("Filters",style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),

                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid,
                    )
                  )
                ),
              ),
              IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed: (){}),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red,
                ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 5.0,),
                    Text('12',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),),
                    IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null)
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),

    );
  }
}
