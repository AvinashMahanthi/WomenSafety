import 'package:flutter/material.dart';
import 'package:girlscriptwomensafety/buildButtonContainer.dart';

class signInPage extends StatefulWidget {
  @override
  _signInPageState createState() => _signInPageState();
}

class _signInPageState extends State<signInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Column(
              children: <Widget>[
                ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 320.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWLbvPIBNxkmkEJWSX6Jk2BsO6uXQ7GzorlA&usqp=CAU",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                buildTextField('Email'),
                SizedBox(height: 20.0),
                buildTextField("Password"),
                SizedBox(height: 20.0),
                Container(
                  height: 56.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    gradient: LinearGradient(
                        colors: [Color(0xFFFB415B), Color(0xFFEE5623)],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft),
                  ),
                  child: FlatButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("SIGN UP",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
