import 'package:flutter/material.dart';
import 'package:shop_app1/models/product.dart';
import 'package:shop_app1/views/widget/txtStyWid.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Product> favoriteProducts;

  FavoritesScreen({Key? key, required this.favoriteProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TxtStyWid(text: "Favorite Products"),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              leading: Image.network(favoriteProducts[index].image),
              title: Text(favoriteProducts[index].name),
              subtitle: Text(favoriteProducts[index].brand),
              trailing: Text("\$${favoriteProducts[index].price}"),
            ),
          );
        },
      ),
    );
  }
}
