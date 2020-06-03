import 'package:flutter/material.dart';
// import 'package:grainofy_latest/GraphCodeFile.dart';
import 'package:grainofy_latest/aboutUs.dart';
import 'package:grainofy_latest/faqs.dart';
import 'package:grainofy_latest/help.dart';
import 'package:grainofy_latest/main1forsub.dart';
// import 'package:grainofy_latest/manage1.dart';
import 'package:grainofy_latest/manage2.dart';
// import 'package:grainofy_latest/whatsappbutton.dart';
import 'package:url_launcher/url_launcher.dart';

import 'graphcallingpage.dart';
// import 'homepage.dart';

import 'marketpage.dart';

// import 'mainhp.dart';

void main() => runApp(MyApp());
var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);
var productImage =
    'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fluid Sidebar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset _offset = Offset(0, 0);
  GlobalKey globalKey = GlobalKey();
  List<double> limits = [];

  bool isMenuOpen = false;

  @override
  void initState() {
    limits = [0, 0, 0, 0, 0, 0];
    WidgetsBinding.instance.addPostFrameCallback(getPosition);
    super.initState();
  }

  getPosition(duration) {
    RenderBox renderBox = globalKey.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    double start = position.dy - 20;
    double contLimit = position.dy + renderBox.size.height - 20;
    double step = (contLimit - start) / 5;
    limits = [];
    for (double x = start; x <= contLimit; x = x + step) {
      limits.add(x);
    }
    setState(() {
      limits = limits;
    });
  }

  double getSize(int x) {
    double size =
        (_offset.dy > limits[x] && _offset.dy < limits[x + 1]) ? 25 : 20;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    double sidebarSize = mediaQuery.width * 0.65;
    double menuContainerHeight = mediaQuery.height / 2;

    return Scaffold(
        body: Container(
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(colors: [
      //       Color.fromRGBO(255, 65, 108, 1.0),
      //       Color.fromRGBO(255, 75, 73, 1.0)
      //     ])
      // ),
      width: mediaQuery.width,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                    // color: Color.fromRGBO(186, 184, 108, 1.0),
                    color: Color.fromRGBO(123, 245, 180, 1.0),
                    // color: Color.fromRGBO(80, 200, 120, 1.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 8.0),
                              // Icon(Icons.arrow_back),
                              SizedBox(height: 8.0),
                              Container(
                                width: 300.0,
                                child: Text(
                                  'Wheat',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32.0),
                                ),
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                'Detailed Analysis',
                                style: TextStyle(color: Colors.black45),
                              ),
                              SizedBox(height: 12.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text('₹',
                                        style: TextStyle(
                                            color: greenColor,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(width: 4.0),
                                  Text('8.5',
                                      style: TextStyle(
                                          color: greenColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 52.0)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Spacer(
                                flex: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()));
                                    },
                                    backgroundColor: greenColor,
                                    child: Icon(Icons.shopping_cart),
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 2,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Image.asset(
                                      'images/grain.png',
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16.0),
                      Text('Planting', style: TextStyle(color: Colors.white)),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2 - 50,
                            decoration: BoxDecoration(
                                // color: darkGreenColor,
                                color: Color.fromRGBO(123, 228, 149, 1.0),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32.0),
                                    topRight: Radius.circular(32.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '250',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 42.0),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'q',
                                      style: TextStyle(color: Colors.white54),
                                    )
                                  ],
                                ),
                                Text(
                                  'In Stock',
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2 - 50,
                            decoration: BoxDecoration(
                                // color: darkGreenColor,
                                color: Color.fromRGBO(123, 228, 149, 1.0),
                                
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32.0),
                                    topRight: Radius.circular(32.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '18',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 42.0),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'q',
                                      style: TextStyle(color: Colors.white54),
                                    )
                                  ],
                                ),
                                Text(
                                  'Sold Out',
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1500),
            left: isMenuOpen ? 0 : -sidebarSize + 20,
            top: 0,
            curve: Curves.elasticOut,
            child: SizedBox(
              width: sidebarSize,
              child: GestureDetector(
                onPanUpdate: (details) {
                  if (details.localPosition.dx <= sidebarSize) {
                    setState(() {
                      _offset = details.localPosition;
                    });
                  }

                  if (details.localPosition.dx > sidebarSize - 20 &&
                      details.delta.distanceSquared > 2) {
                    setState(() {
                      isMenuOpen = true;
                    });
                  }
                },
                onPanEnd: (details) {
                  setState(() {
                    _offset = Offset(0, 0);
                  });
                },
                child: Stack(
                  children: <Widget>[
                    CustomPaint(
                      size: Size(sidebarSize, mediaQuery.height),
                      painter: DrawerPainter(offset: _offset),
                    ),
                    Container(
                      height: mediaQuery.height,
                      width: sidebarSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            // height: mediaQuery.height * 0.25,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                   Image.asset(
                      "images/leaf1.png",
                      width: sidebarSize / 1.2,
                    ),
                                  Text(
                                    "Grainofy",
                                    style: TextStyle(color: Colors.black45, fontSize: 33.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            thickness: 2,
                          ),
                          Container(
                            key: globalKey,
                            width: double.infinity,
                            height: menuContainerHeight,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => ManagePage()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.settings,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Management",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                Container(
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => Mkt1Home()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.shopping_basket,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Market",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => GraphCallingPage()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.report,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Reports",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FlatButton(
                                   onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => AboutUs()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.question_answer,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "About Us",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FlatButton(
                                   onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => Faqs()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.book,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "FAQs",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FlatButton(
                                   onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (_) => HelpPage()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.help,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Help",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                 Container(
                                  child: FlatButton(
                                   onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) => subpage()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.subscriptions,
                                          color: Colors.green,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Subscription",
                                          style: TextStyle(fontSize: 24.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 400),
                      right: (isMenuOpen) ? 10 : sidebarSize,
                      bottom: 30,
                      child: IconButton(
                        enableFeedback: true,
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.black45,
                          size: 30,
                        ),
                        onPressed: () {
                          this.setState(() {
                            isMenuOpen = false;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final double textSize;
  final double height;

  MyButton({this.text, this.iconData, this.textSize, this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            iconData,
            color: Colors.black45,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black45, fontSize: textSize),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}

class DrawerPainter extends CustomPainter {
  final Offset offset;

  DrawerPainter({this.offset});

  double getControlPointX(double width) {
    if (offset.dx == 0) {
      return width;
    } else {
      return offset.dx > width ? offset.dx : width + 75;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color.fromRGBO(200, 245, 170, 1.0)
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        getControlPointX(size.width), offset.dy, size.width, size.height);
    path.lineTo(-size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Wheat',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontSize: 22.0)),
                SizedBox(height: 32.0),
                Container(
                  width: 200.0,
                  child: Text(
                    'Detailed Analysis',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0),
                  ),
                ),
                SizedBox(height: 42.0),
                itemRow(Icons.star, 'Total Stock', '1000 q'),
                SizedBox(height: 22.0),
                itemRow(Icons.ac_unit, 'Stock left', '550 q'),
                SizedBox(height: 22.0),
                itemRow(Icons.straighten, 'Stock sold', '450 q'),
              ],
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  Text(
                    'Modify the details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  InkWell(
                                      child: Text(
                      'Govt Policies',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () => launch('https://dfpd.gov.in/NationalPolicy_HST.htm')
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                  ),
                ),
                Container(
                    height: 80.0,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Color(0xff2c2731),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          'Details',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
      ],
    );
  }
}
