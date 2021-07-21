import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/product_detail_screen.dart';
import 'package:shop/views/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha Loja',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor:  Colors.deepOrange,
        fontFamily: 'Lato'
      ),

      home: ProductOverviewScreen(),

      routes: {
        AppRoutes.PRODUCT_DETAIL : (context) =>ProductDetailScreen()
      },
    );
  }
}
