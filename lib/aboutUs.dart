import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:grainofy_latest/main1forsub.dart';
import 'package:grainofy_latest/sidebarplusmain.dart';


class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}



class _AboutUsState extends State<AboutUs> {
  String msg = 'Hi There I am Using Grainofy';
  String base64Image = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        // child: 
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: Color.fromRGBO(123, 180, 100, 1.0),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(350.0),
                      topRight: Radius.circular(50.0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),

 onTap: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  MyHomePage()));
                                    }



                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 90.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
                Positioned(
                top: (MediaQuery.of(context).size.height / 2) - 200.0,
                left: (MediaQuery.of(context).size.width / 2) - 105.0,
                child: Image(
                  image: AssetImage('assets/images/we.png'),
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 300,
                    left: 20.0,
                    right: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: "G",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),
                            TextSpan(
                                text:
                                    "rainofy "),
                            TextSpan(
                              text: "India has the second-largest population in the world. India is also knowns as Bharat, Hindustan and sometimes Aryavart. It is surrounded by oceans from three sides which are Bay Of Bengal in the east, the Arabian Sea in the west and Indian oceans in the south. Tiger is the national animal of India. Peacock is the national bird of India. Mango is the national fruit of India."
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          )
          
        ],
      ),
    ),

    );
  }
}
