import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUPScreen extends StatefulWidget {
  @override
  _SignUPScreenState createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFC),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          Container(
            alignment: Alignment.center,
            child: SvgPicture.asset("images/illustartion.svg"),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Complete Sign Up.",
                    style: TextStyle(color: Color(0xFF404B69), fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Your name",
                    style: TextStyle(color: Color(0xFF404B69), fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(color: Color(0xFF404B69), fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Mobile number",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gender",
                    style: TextStyle(color: Color(0xFF404B69), fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF53BDF2))),
                      height: 50.0,
                      width: 100.0,
                      child: FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.alarm),
                        label: Text(
                          "Male",
                          style: TextStyle(color: Color(0xFF53BDF2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFFE75C4))),
                      height: 50.0,
                      child: FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.access_alarms),
                        label: Text(
                          "Female",
                          style: TextStyle(color: Color(0xFFFE75C4)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Home address",
                    style: TextStyle(
                      color: Color(0xFF404B69),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Home Address",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Adhar card number",
                    style: TextStyle(
                      color: Color(0xFF404B69),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Adhar card number",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF3D99FF), Color(0xFFA6D1FF)],
                      ),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "Complete Sign up",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            color: Colors.white,
          )
        ],
      )),
    );
  }
}
