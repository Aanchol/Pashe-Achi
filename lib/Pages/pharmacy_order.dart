import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pashe_achi/Pages/add_to_cart_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/common_widget/product_card.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';
import '../common_widget/search_field.dart';

class PharmacyPage extends StatefulWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  State<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(builder: (_, provider, ___) {
      return Scaffold(
        appBar: AppBar(
          //elevation: 0,
          title: Text("Pharmacy Order"),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          actions: [
            Center(
              child: Badge(
                badgeContent: Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                ),
                badgeColor: Colors.pinkAccent,
                child: InkWell(
                    child: Icon(
                      FontAwesomeIcons.cartPlus,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddToCartPage();
                      }));
                    }),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 12.0),
                        ],
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchField(
                            searchIcon: Icons.search,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/pharmacy_order.png')),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF9bd7d5),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 22),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.camera,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Upload your prescription',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: provider.productList.productStoreList.length,
                itemBuilder: (context, index) => ProductCard(
                    product: provider.productList.productStoreList[index]),
              ),
            ),
          ],
        ),
      );
    });
  }
}
