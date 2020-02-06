import 'package:demo_song_app/constants/constant.dart';

class ImageModel {
  String title, time, imagePath;

  ImageModel(
      {this.title, this.time = '4:00 min', this.imagePath = imageMarvel});
}

List<ImageModel> latestRelease = [
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
];

List<ImageModel> trendingNow = [
  ImageModel(title: 'Heish: The gang'),
  ImageModel(title: 'nanana: Fenna Gittu'),
  ImageModel(title: 'Heish: The gang'),
  ImageModel(title: 'nanana: Fenna Gittu'),
];

List<ImageModel> djMixes = [
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
];

List<ImageModel> bongo = [
  ImageModel(title: 'Heish: The gang'),
  ImageModel(title: 'nanana: Fenna Gittu'),
  ImageModel(title: 'Heish: The gang'),
  ImageModel(title: 'nanana: Fenna Gittu'),
];

List<ImageModel> gengeton = [
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
  ImageModel(title: 'Lowkey: Akon'),
  ImageModel(title: 'Show me love: Alicia Keys'),
];
