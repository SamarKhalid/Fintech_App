import 'package:flutter/material.dart';
import '../theme/AppColor.dart';
class Lists {
  static  List<Color> creditCardColors = [
    Colors.white,
    AppColor.cardYellow,
    AppColor.cardBlue,
    AppColor.cardPink,
    AppColor.cardRed,
  ];
  static List<Color> transactionIconBackgrounds = [
    AppColor.cardYellow,
    AppColor.cardBlue,
    AppColor.cardPink,
    AppColor.cardRed,
  ];
  static List<Color> transactionIconColors = [
    Colors.yellowAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.redAccent,
  ];
  static List<String> transactionNames = [
    'Dribble',
    'House',
    'Sony Camera',
    'Paypal'
  ];
  static List<String> transactionDescriptions = [
    'Subscription Fee',
    'Saving',
    'Shopping Fees',
    'Salary'
  ];
  static List<String> transactionsPayments = [
    '-\$500,00',
    '-\$20,00',
    '+\$100,00',
    '-\$500'
  ];
  static List<Color> transactionsPaymentsColors = [
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.red,
  ];
  static List<String> transactionsIconPaths =[
    'assets/icons/laptop_icon.png',
    'assets/icons/download_icon.png',
    'assets/icons/shoppingbag_icon.png',
    'assets/icons/creditcard_icon.png',
  ];
}