
import 'package:flutter/material.dart';




double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getSizeBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.02;
}
double getSizeBoxHeightL(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.08;
}

double getFontLarge(BuildContext context) {
  return (getPageWidth(context) * 0.0085) * (getPageHeight(context) * 0.0085);
}

double getHorizPadding(BuildContext context) {
  return (getPageWidth(context) * 0.08) ;
}

double getButtonRadius(BuildContext context) {
  return 30.0 ;
}