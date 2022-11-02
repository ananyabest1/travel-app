import 'package:flutter/material.dart';

class ResponsiveButtton extends StatelessWidget {
  bool?isResponsive;
  double? width;

  ResponsiveButtton({Key? key,this.width,this.isResponsive=false,}) : super(key: key);

  get image => null;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image(
        image: NetworkImage('https://image.shutterstock.com/image-vector/click-here-button-isolated-website-260nw-1776069401.jpg'),
      ),
    );
  }
}