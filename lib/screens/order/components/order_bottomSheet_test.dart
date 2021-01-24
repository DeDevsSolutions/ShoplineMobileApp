import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "dart:async";
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import "package:shopline/main.dart";
import 'package:shopline/models/product.dart';
import 'package:shopline/screens/order/tabs/you_tab.dart';
import 'package:shopline/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'counterButton.dart';

class PlaceOrderScreen extends StatefulWidget {
  final String productId;
  final String productOwner;
  final String productMediaUrl;
  final String productName;
  final String productOffer;
  final double productPrice;

  const PlaceOrderScreen(
      {this.productId,
      this.productOwner,
      this.productMediaUrl,
      this.productName,
      this.productOffer,
      this.productPrice});
  @override
  _PlaceOrderScreenState createState() => _PlaceOrderScreenState(
      productId: this.productId,
      productOwner: this.productOwner,
      productMediaUrl: this.productMediaUrl,
      productName: this.productName,
      productOffer: this.productOffer,
      productPrice: this.productPrice);
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  final String productId;
  final String productOwner;
  final String productMediaUrl;
  final String productName;
  final String productOffer;
  final double productPrice;

  //bool didFetchComments = false;
  //List<Comment> fetchedComments = [];
  int quantity = 1;
  final TextEditingController _quantityController = TextEditingController();

  _PlaceOrderScreenState(
      {this.productId,
      this.productOwner,
      this.productMediaUrl,
      this.productName,
      this.productOffer,
      this.productPrice});

  @override
  Widget build(BuildContext context) {
    Widget confirmButton = InkWell(
        onTap: () {
          addOrder(quantity);
        },
        /* async {
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => CheckOutPage())); 
        },*/
        child: Container(
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          width: 300,
          height: 50,
          child: Center(
              child: new Text(
            "Order Now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color(0x595458f7),
                blurRadius: 40,
                offset: Offset(0, 18),
              ),
            ],
            color: Color(0xff5458f7),
          ),
        ));

    Widget wishListButton = InkWell(
        onTap: () async {
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => CheckOutPage()));
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          width: 300,
          height: 50,
          child: Center(
            child: new Text(
              "Add to Wishlist",
              style: TextStyle(
                color: Color(0xff5458f7),
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ));

    return Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.9),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 350,
              child: Column(
                children: [
                  Align(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      //padding: EdgeInsets.all(8),
                      width: 50,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0x7f5458f7),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(children: [
                      Text(
                        "Place Order",
                        style: TextStyle(
                          color: Color(0xffff8c39),
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            color: Color(0xff5458f7),
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          productName,
                          style: TextStyle(
                            color: Color(0xff424242),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Color(0xff5458f7),
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            //productPrice,
                            "20,000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff424242),
                              fontSize: 16,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                              color: Color(0xff5458f7),
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          NumericStepButton(
                            maxValue: 100,
                            minValue: 1,
                            onChanged: (value) {
                              quantity = value;
                            },
                          ),
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Offers",
                            style: TextStyle(
                              color: Color(0xff5458f7),
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            productOffer,
                            style: TextStyle(
                              color: Color(0xff424242),
                              fontSize: 16,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Deliver to",
                              style: TextStyle(
                                color: Color(0xff5458f7),
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Gayaza, Kasangati",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff424242),
                                fontSize: 16,
                              ),
                            ),
                          ]))
                ],
              ),
            ),
            confirmButton,
            wishListButton,
          ],
        ));
  }

  addOrder(int quantity) {
    _quantityController.clear();
    var reference = FirebaseFirestore.instance.collection('shopline_orders');

    //.collection("orders")
    reference.add({
      "username": currentUserModel.username,
      "userId": currentUserModel.id,
      "userProfileImg": currentUserModel.photoUrl,
      "quantity": quantity,
      "timestamp": Timestamp.now(),
      "productId": productId,
      "mediaUrl": productMediaUrl,
      "productname": productName,
      "productoffer": productOffer,
      //"deliverto": currentUserModel.location
    });

    //adds to postOwner's activity feed
    FirebaseFirestore.instance
        .collection("shopline_a_feed")
        .doc(productOwner)
        .collection("items")
        .add({
      "username": currentUserModel.username,
      "userId": currentUserModel.id,
      "type": "order",
      "userProfileImg": currentUserModel.photoUrl,
      "quantity": quantity,
      "timestamp": Timestamp.now(),
      "productId": productId,
      "mediaUrl": productMediaUrl,
    });

    //TO DO: Redirect to order page

    Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => YouTab()));

    // add comment to the current listview for an optimistic update
    /* setState(() {
      fetchedComments = List.from(fetchedComments)
        ..add(Comment(
            username: currentUserModel.username,
            comment: comment,
            timestamp: Timestamp.now(),
            avatarUrl: currentUserModel.photoUrl,
            userId: currentUserModel.id));
    }); */
  }
}
