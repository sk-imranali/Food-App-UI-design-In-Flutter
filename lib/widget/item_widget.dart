import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/single_item_pages.dart';

class ItemWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView.count(

        crossAxisCount: 2,

      shrinkWrap: true,
      childAspectRatio: 0.99,
      children: [
        for(int i=1;i<5;i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF232227),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8
              )
            ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SingleItemPages()));
                //  Navigator.pushNamed(context, 'SingleItemPages');
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Image.asset("images/$i.png",height: 100.h,width: 100.w,),
                ),
              ),
             Padding(
               padding:  EdgeInsets.only(bottom:12),
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Text('Cheese Burger',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
               ),
             ),

              Padding(
                padding:  EdgeInsets.only(bottom:12),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Hot Burger',style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$55",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.add_shopping_cart_rounded,color: Colors.white,),
                    ),
                    // Icon(CupertinoIcons.cart_badge_plus,size: 27,color: Colors.white,)
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
