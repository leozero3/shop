import 'package:flutter/material.dart';
import 'package:shop/widget/product_grid.dart';

enum FilterOption{
  Favorite,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {

  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOption selectedValue){
              setState(() {
                if (selectedValue == FilterOption.Favorite) {
                  _showFavoriteOnly = true;

                }  else {
                  _showFavoriteOnly = false;

                }
              });

            },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    child: Text('Somente Favoritos'),
                    value: FilterOption.Favorite,
                  ),
                  PopupMenuItem(
                    child: Text('Todos'),
                    value: FilterOption.All,
                  ),
                ];
              })
        ],
      ),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}
