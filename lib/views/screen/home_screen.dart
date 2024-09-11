import 'package:shop_app1/models/product.dart';
import 'package:shop_app1/viewmodels/cart_vm.dart';
import 'package:shop_app1/viewmodels/products_vm.dart';
import 'package:flutter/material.dart';
import 'package:shop_app1/views/widget/txtStyWid.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductsVM pVM = ProductsVM();
  bool statuse = false;

  @override
  Widget build(BuildContext context) {
    List<Product> allProducts = pVM.loadAllProducts();
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              child: Badge(
                  child: Icon(Icons.shopping_cart),
                  label: Text("${ProductsVM.cartItems.length}")),
              margin: EdgeInsets.only(top: 10, right: 10),
            ),
          ],
          title:TxtStyWid(text: "Home Screen"),
        ),
        body: ListView.builder(
            itemCount: allProducts.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/details",
                      arguments: allProducts[index]);
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(),settings: RouteSettings(arguments: allProducts[index])));
                },
                child: Card(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            child: Container(
                              // color: Colors.yellow,
                              height: 50,
                              child: ListTile(
                                leading: IconButton(
                                  onPressed: () {
                                    // if (allProducts[index].isFavorite)
                                    //   allProducts[index].isFavorite = false;
                                    // else {
                                    //   allProducts[index].isFavorite = true;
                                    // }
                                    // setState(() {});
                                  },
                                  icon: Icon(Icons.favorite
                                    // allProducts[index].isFavorite
                                    //     ? Icons.favorite
                                    //     : Icons.favorite_border_outlined,
                                    // color: allProducts[index].isFavorite
                                    //     ? Colors.red
                                    //     : Colors.black
                                  ),
                                ),
                                trailing: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.red,
                                  ),
                                  child: Text(
                                    "25%",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Image.network(allProducts[index].image),
                          //  IconButton(
                          //             allProducts[index].isFavorite
                          //                 ? Icons.favorite
                          //                 : Icons.favorite_border_outlined,
                          //             color: allProducts[index].isFavorite
                          //                 ? Colors.red
                          //                 : Colors.black),
                          // Positioned(
                          //   right: -50,
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     height: 50,
                          //     width: 50,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(25),
                          //       color: Colors.red,
                          //     ),
                          //     child: Text(
                          //       "25%",
                          //       style: TextStyle(
                          //           fontSize: 17, fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),
                          // Positioned(
                          //     left: -50,
                          //       child: InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             allProducts[index].isFavorite =
                          //                 !allProducts[index].isFavorite;
                          //           });
                          //         },
                          //         child: Container(
                          //           child: Icon(
                          //               allProducts[index].isFavorite
                          //                   ? Icons.favorite
                          //                   : Icons.favorite_border_outlined,
                          //               color: allProducts[index].isFavorite
                          //                   ? Colors.red
                          //                   : Colors.black),
                          //         ),
                          //       )),
                          //
                        ],
                      ),

                      // Image.network("https://storage.googleapis.com/pod_public/1300/168838.jpg"),
                      ListTile(
                        leading: InkWell(
                            onTap: () {
                              ProductsVM.addToCart(p: allProducts[index]);
                              setState(() {});
                            },
                            child: Icon(Icons.add_shopping_cart)),
                        subtitle: Text(allProducts[index].brand),
                        title: Text(allProducts[index].name),
                        trailing: Text("${allProducts[index].price}"),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
