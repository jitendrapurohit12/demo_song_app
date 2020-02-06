import 'package:flutter/material.dart';

const imageMarvel = 'assets/marvel.jpg';

const strViewMore = 'View more';

TextStyle smallTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption.copyWith(color: Colors.white);
TextStyle bannerTitle(BuildContext context) =>
    Theme.of(context).textTheme.headline6;
TextStyle imageTitleStyle(BuildContext context) =>
    smallTextStyle(context).copyWith(fontSize: 11, fontWeight: FontWeight.w500);
TextStyle imageTimeStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption.copyWith(fontSize: 11);
TextStyle scrollableTitleStyle(BuildContext context) =>
    Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold);
TextStyle bottomBarStyle = TextStyle(color: Colors.black54, fontSize: 10);
