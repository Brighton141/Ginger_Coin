import 'package:chatui3/views/chatRoomsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset(
      "assets/images/logo.png",
      height: 40,
    ),
    elevation: 0.0,
    centerTitle: false,
  );
}

Widget appBarOther(BuildContext context0) {
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    title: Image.asset(
      "assets/images/logo.png",
      height: 40,
    ),
    elevation: 0.0,
    centerTitle: false,
  );
}

Widget appBarSearch(BuildContext context) {
  return AppBar(
    title: Image.asset(
      "assets/images/logo.png",
      height: 40,
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(Icons.message),
        ),
      ),
    ],
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white60),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

InputDecoration usrFieldInputDecoration(String hintText) {
  return InputDecoration(
      icon: const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: const Icon(Icons.person, color: Colors.white)),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white54),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

InputDecoration emailFieldInputDecoration(String hintText) {
  return InputDecoration(
      icon: const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: const Icon(Icons.email, color: Colors.blue)),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

InputDecoration passFieldInputDecoration(String hintText) {
  return InputDecoration(
    icon: const Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: const Icon(Icons.lock, color: Colors.blue)),
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
  );
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 12);
}

TextStyle biggerTextStyle() {
  return TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300);
}
