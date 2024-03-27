import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemBar extends StatelessWidget {
  const SingleItemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Total Price",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$55",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(

              decoration: BoxDecoration(
                color: Color(0xFFEFB322),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )

              ),
              child: Padding(
                padding:  EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Buy Now",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(width: 10,),
                    Icon(CupertinoIcons.cart_fill,color: Colors.white,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
