import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0)),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink, width: 2.0),
    ));

final ButtonStyle signInStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20, color: Colors.white),
    backgroundColor: Colors.pink[400]);

final ButtonStyle takeSurveyStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 10, color: Colors.white),
    backgroundColor: Color(0xD91130CE));

final ButtonStyle qrLinkStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 10, color: Colors.white));

final ButtonStyle donatedStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 10, color: Colors.white), backgroundColor: Colors.green);

final TextStyle reminderStyle = TextStyle(fontSize: 10, color: Colors.red[800]);