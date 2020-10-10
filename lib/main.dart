import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  File _frontimage;
  File _backimage;
  final _picker = ImagePicker();
  Future getFrontImage() async {
    PickedFile pickedFile = await _picker.getImage(source: ImageSource.camera);
    final image = File(pickedFile.path);
    setState(() {
      _frontimage = image;
    });
  }
  Future getBackImage() async {
    PickedFile pickedFile = await _picker.getImage(source: ImageSource.camera);
    final image = File(pickedFile.path);
    setState(() {
      _backimage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFC),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            alignment: Alignment.center,
            child: SvgPicture.asset("images/illustartion.svg"),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Image of Adhar card.",
                    style: TextStyle(color: Color(0xFF404B69), fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                // Container(
                //   alignment: Alignment.topLeft,
                //   child: Text(
                //     "Your name",
                //     style: TextStyle(color: Color(0xFF404B69), fontSize: 14.0),
                //   ),
                // ),
                // SizedBox(
                //   height: 8.0,
                // ),
                // Container(
                //   padding: EdgeInsets.all(8.0),
                //   height: 50.0,
                //   decoration: BoxDecoration(
                //     color: Colors.black12,
                //     borderRadius: BorderRadius.circular(8.0)
                //   ),
                //   child: TextField(
                //     decoration: InputDecoration(
                //         hintText: "Name",
                //         border: InputBorder.none,
                //         hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                //   ),
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // Container(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     "Gender",
                //     style: TextStyle(color: Color(0xFF404B69), fontSize: 14.0),
                //   ),
                // ),
                // SizedBox(height: 8.0,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //   Container(
                //     height: 50.0,
                //     width: 100.0,
                //     child: FlatButton.icon(
                //       onPressed: (){},
                //       icon: Icon(Icons.access_alarms),
                //       label: Text("Male",
                //       style: TextStyle(color:Color(0xFF53BDF2)),
                //       ),
                //       ),
                //       ),
                //       Container(
                //     child: FlatButton.icon(
                //       onPressed: (){},
                //       icon: Icon(Icons.access_alarms),
                //       label: Text("Female",
                //       style: TextStyle(color: Color(0xFFFE75C4)),
                //       ),
                //       ),
                //       ),

                // ],),
                // SizedBox(
                //   height: 15.0,
                // ),
                // Container(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     "Home address",
                //     style: TextStyle(
                //       color: Color(0xFF404B69),
                //       fontSize: 14.0,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 8.0,
                // ),
                // Container(
                //   padding: EdgeInsets.all(8.0),
                //   height: 50.0,
                //   decoration: BoxDecoration(
                //     color: Colors.black12,
                //     borderRadius: BorderRadius.circular(8.0)
                //   ),
                //   child: TextField(
                //     decoration: InputDecoration(
                //         hintText: "Home Address",
                //         border: InputBorder.none,
                //         hintStyle: TextStyle(color: Color(0xFF9B9B9B))),
                //   ),
                // ),
                RaisedButton(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10.0)),
                  onPressed: getFrontImage,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0XFFF55A39), Color(0XFFF4A03B)],
                      ),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "Front View",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 100.0,
                  child: _frontimage == null ? Text("Image is not loaded") : Image.file(_frontimage),
                ),
                 SizedBox(
                  height: 15.0,
                ),
                RaisedButton(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10.0)),
                  onPressed: getBackImage,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0XFFF55A39), Color(0XFFF4A03B)],
                      ),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "Back View",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 100.0,
                  child: _backimage == null ? Text("Image is not loaded") : Image.file(_backimage),
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
                        "Submit",
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
