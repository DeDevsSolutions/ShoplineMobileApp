import 'package:shopline/app_properties.dart';
import 'package:shopline/models/product.dart';
import 'package:shopline/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedList extends StatelessWidget {
  List<Product> products = [
    Product('assets/bag_1.png', 'Bag', 'Beautiful bag', 2.33),
    Product('assets/cap_5.png', 'Cap', 'Cap with beautiful design', 10),
    Product('assets/jeans_1.png', 'Jeans', 'Jeans for you', 20),
    Product('assets/womanshoe_3.png', 'Woman Shoes',
        'Shoes with special discount', 30),
    Product('assets/bag_10.png', 'Bag Express', 'Bag for your shops', 40),
    Product('assets/jeans_3.png', 'Jeans', 'Beautiful Jeans', 102.33),
    Product('assets/ring_1.png', 'Silver Ring', 'Description', 52.33),
    Product('assets/shoeman_7.png', 'Shoes', 'Description', 62.33),
    Product('assets/headphone_9.png', 'Headphones', 'Description', 72.33),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: Container(
                margin: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 9,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductPage(product: products[index]))),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[50],
                      ),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: ClipOval(
                                      child: Image.asset(
                                        products[index].image,
                                        height: 150,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mercy Atim",
                                        style: TextStyle(
                                          // color: Color(0xff1d2f6f),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Fashion Designer",
                                        style: TextStyle(
                                          color: Color(0xff1d2f6f),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("2hrs"),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {
                              var snackBar = SnackBar(
                                content: Text('Item image'),
                                action: SnackBarAction(
                                  label: 'View',
                                  textColor: Color(0xffff8c39),
                                  onPressed: () {
                                    // Some code to undo the change.
                                  },
                                ),
                              );
                              // _globalKey.currentState.showSnackBar(snackBar);
                            },
                            // handle your onTap here
                            child: Image.asset(
                              products[index].image,
                              height: 300,
                              // width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.shade200,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 20.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 24,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "6.2k",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              Icons.message_outlined,
                                              color: Colors.blue.shade500,
                                              size: 24,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "259",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              Icons.repeat_rounded,
                                              color: Color(0xffff8c39),
                                              size: 24,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              "53",
                                              style: TextStyle(
                                                color: Color(0xffff8c39),
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: 50,
                                child: FlatButton(
                                  onPressed: () {
                                    var snackBar = SnackBar(
                                      content: Text('Shop Item'),
                                      action: SnackBarAction(
                                        label: 'View',
                                        textColor: Color(0xffff8c39),
                                        onPressed: () {
                                          // Some code to undo the change.
                                        },
                                      ),
                                    );
                                    // _globalKey.currentState.showSnackBar(snackBar);
                                  },
                                  color: Color(0xffE4E5FD),
                                  child: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              products[index].name,
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "UGX 259,999",
                              style: TextStyle(
                                color: Color(0xff5d4c77),
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Text(
                                products[index].description,
                                style: TextStyle(
                                  color: Color(0xff424242),
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
