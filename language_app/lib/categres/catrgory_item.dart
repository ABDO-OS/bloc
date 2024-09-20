import 'package:flutter/material.dart';

// ignore: must_be_immutable
class category extends StatelessWidget {
  category({this.name, this.color, this.onTap});

  String? name;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 15),
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          name!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          // color: Colors.white
        ),
      ),
    );
  }
}
