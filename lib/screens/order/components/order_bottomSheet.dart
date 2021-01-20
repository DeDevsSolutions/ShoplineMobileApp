import 'package:shopline/models/product.dart';
import 'package:shopline/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'counterButton.dart';

class OrderBottomSheet extends StatefulWidget {
  @override
  _OrderBottomSheetState createState() => _OrderBottomSheetState();
}

class _OrderBottomSheetState extends State<OrderBottomSheet> {
  List<Product> products = [
    Product('assets/headphones.png',
        'Boat roackerz 400 On-Ear Bluetooth Headphones', 'description', 45.3),
    Product('assets/headphones_2.png',
        'Boat roackerz 100 On-Ear Bluetooth Headphones', 'description', 22.3),
    Product('assets/headphones_3.png',
        'Boat roackerz 300 On-Ear Bluetooth Headphones', 'description', 58.3)
  ];
  int yourLocalVariable = 1;

  @override
  Widget build(BuildContext context) {
    Widget confirmButton = InkWell(
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
            ),),
          
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
                    child: Row(
                      children: [
                        Text("Place Order", style: TextStyle(color: Color(0xffff8c39), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w500, ), ),
                  ] ),),
                 
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
                      Text("Grafitti Art Potrait", 
                      style: TextStyle(
                        color: Color(0xff424242), 
                        fontSize: 16, ),
                      textAlign: TextAlign.center,  ),
                    ],
                  ),),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price", style: TextStyle(color: Color(0xff5458f7), fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w500, ), ),
                      Text("UGX 20,000", textAlign: TextAlign.center, style: TextStyle(color: Color(0xff424242), fontSize: 16, ), ),
                  ]),),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Quantity", style: TextStyle(color: Color(0xff5458f7), fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w500, ), ),
                    NumericStepButton(
                maxValue: 100,
                minValue: 1,
                onChanged: (value) {
                  yourLocalVariable = value;
                },
              ),
                  ]),),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Offers", style: TextStyle(color: Color(0xff5458f7), fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w500, ), ),
                    Text("Buy one, get one", style: TextStyle(color: Color(0xff424242), fontSize: 16, ), ),
                  ]),),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Deliver to", style: TextStyle(color: Color(0xff5458f7), fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w500, ), ),
                    Text("Gayaza, Kasangati", textAlign: TextAlign.center, style: TextStyle(color: Color(0xff424242), fontSize: 16, ), ),
                  ]))
                ],
              ),
            ),
            confirmButton,
            wishListButton,
          ],
        ));
  }
}
