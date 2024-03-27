import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/single_item_pages.dart';
import 'package:food_app/widget/home_nav_bar.dart';


import 'bottom_nav_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // debugShowCheckedModeBanner: false,
    return ScreenUtilInit(

    designSize: Size(428, 926),
    builder: (_, child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: SplashScreen(),
      routes: {
        '/': (context) => BottomNavController(),
        'singleItemPage': (context) => SingleItemPages(),


        // Other routes...
      },
    );
    },
    );
  }
}
