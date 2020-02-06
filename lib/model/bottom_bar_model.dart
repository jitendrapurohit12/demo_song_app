import 'package:flutter/material.dart';

class BottomBarModel {
  String title;
  IconData icon;

  BottomBarModel({this.title, this.icon});
}

List<BottomBarModel> bottomList = [
  BottomBarModel(title: 'Home', icon: Icons.home),
  BottomBarModel(title: 'Video', icon: Icons.videocam),
  BottomBarModel(title: 'Music', icon: Icons.music_note),
  BottomBarModel(title: 'News', icon: Icons.new_releases),
  BottomBarModel(title: 'More', icon: Icons.menu),
];
