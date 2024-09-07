import 'package:flutter/material.dart';
import 'package:shop_app1/models/product.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product p = ModalRoute.of(context)!.settings.arguments as Product;

    print("the image is ${p.thumbnails[0]}");
    return Scaffold(
      appBar: AppBar(
        title: Text(p.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(p.image),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                children: p.thumbnails
                    .map((e) => Container(
                          margin: EdgeInsets.all(5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[300]),
                          child: Center(
                            child: Image.network(e),
                          ),
                        ))
                    .toList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(p.brand),
                  Text(p.price.toString()),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(p.description)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
