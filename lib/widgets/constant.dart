import 'package:flutter/material.dart';

const double designWidth = 360;
const double designHeight = 800;

getScreenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

getScreenHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
