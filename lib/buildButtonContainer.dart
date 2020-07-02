import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

bool _isHidden = true;

Widget buildTextField(String hintText) {
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 16.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      prefixIcon: hintText == "Email" ? Icon(Icons.mail) : Icon(Icons.lock),
      suffixIcon: hintText == "Password"
          ? IconButton(
              onPressed: () {},
              icon: _isHidden
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            )
          : null,
    ),
    obscureText: hintText == "Password" ? _isHidden : false,
  );
}
