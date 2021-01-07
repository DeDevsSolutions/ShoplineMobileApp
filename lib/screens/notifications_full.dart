import 'package:shopline/app_properties.dart';
import 'package:shopline/screens/rating/rating_page.dart';
import 'package:shopline/screens/tracking_page.dart';
import 'package:flutter/material.dart';

class NotificationsFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      child: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: Color(0xff5d4c77),
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                   )
                    ),
                  CloseButton()
                ],
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    // Request amount
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Requested for ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Pay',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    
                    // Send amount
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Sai Sankar Ram',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Send You ',
                                          ),
                                          TextSpan(
                                            text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Accept',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text('Decline',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                   
                    
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
