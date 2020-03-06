import 'dart:math';

import 'package:flutter/material.dart';

const imageMarvel = 'assets/marvel.jpg';
const imageLowkey = 'assets/lowkey.jpg';
const imageShowMeLove = 'assets/show_me_love.jpg';
const imageHeish = 'assets/heish.jpeg';
const imageNanana = 'assets/nanana.jpg';
const imageCover = 'assets/cover.jpg';

const strViewMore = 'View more';

bool userMobileLayout(BuildContext context) =>
    MediaQuery.of(context).size.shortestSide < 600;

TextStyle smallTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption.copyWith(color: Colors.white);
TextStyle bannerTitle(BuildContext context) =>
    Theme.of(context).textTheme.title;
TextStyle imageTitleStyle(BuildContext context) =>
    smallTextStyle(context).copyWith(fontSize: 11, fontWeight: FontWeight.w500);
TextStyle imageTimeStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption.copyWith(fontSize: 11);
TextStyle scrollableTitleStyle(BuildContext context) =>
    Theme.of(context).textTheme.subtitle.copyWith(fontWeight: FontWeight.bold);
TextStyle bottomBarStyle = TextStyle(color: Colors.black54, fontSize: 10);

Random randomGenerator = Random.secure();

List<String> images = [
  imageLowkey,
  imageShowMeLove,
  imageHeish,
  imageNanana,
  imageMarvel
];
