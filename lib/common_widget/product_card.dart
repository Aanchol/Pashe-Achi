import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pashe_achi/Pages/add_to_cart_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/utils/constants.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product? product;


  ProductCard({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(

      builder: (_,provider,___) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFB71C1C),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF073738),
                offset: Offset(2, 3),
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(product!.img),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product!.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product!.description,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '\u09F3 ' + product!.price.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),

                      ],
                    ),
                    InkWell(
                      onTap: (){
                        provider.addToCartList.contains(product)?
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF9bd7d5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text("Added",
                              style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ): provider.addToCartList.add(product!);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return AddToCartPage();
                            }));
                      },
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF9bd7d5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text("Add to cart",
                              style: TextStyle(color: Colors.black,
                               fontWeight: FontWeight.bold,
                              ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
