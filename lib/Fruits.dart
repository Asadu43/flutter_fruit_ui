import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                foodCard('Orange', 'images/orange.jpg', "2.8", true),
                foodCard('Apple', 'images/apple.jpg', "4.3", false),
                foodCard('Fresh Cherrie', 'images/cherrie.png', "0.6", true),
                foodCard('tangerine', 'images/tangerine.jpg', "1.37", false),

                SizedBox(height: 15.0,),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 40.0,),
                foodCard('Pine Apple', 'images/pineapple.jpg', "2.8", false),
                foodCard('Rasp Berry', 'images/raspberry.jpg', "4.3", true),
                foodCard('Fresh Cherrie', 'images/cherrie.png', "0.6", false),
                foodCard('Straw Berry', 'images/strawberrie.jpg', "1.37", true),
              ],
            ),
          ],
        ),
      ],
    );
  }
  Widget foodCard(String title, String imgPath, String price , bool isFav){
    return Padding(padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
    child: Container(
      height: 200,
      width: (MediaQuery.of(context).size.width/2)-20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
        ]
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 125.0,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(10.0),
                     topRight: Radius.circular(10.0),
                   ),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: isFav ? Icon(Icons.favorite,color: Colors.red,)
                  : Icon(Icons.favorite_border, color: Colors.white,),
                ),
              )
            ],
          ),
          SizedBox(height: 15.0,),
          Text(title,style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10.0,),
          Text('\$ '+price+ ' each',style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    ),
    );

  }
}
