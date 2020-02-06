import 'package:demo_song_app/constants/constant.dart';
import 'package:demo_song_app/model/image_model.dart';

class ScrollableModel {
  String heading, trailing;
  List<ImageModel> imageList;

  ScrollableModel({this.heading, this.imageList, this.trailing = strViewMore});
}

List<ScrollableModel> scrollableList = [
  ScrollableModel(heading: 'Latest Releases', imageList: latestRelease),
  ScrollableModel(heading: 'Trending Now', imageList: trendingNow),
  ScrollableModel(heading: 'DJ Mixes', imageList: djMixes),
  ScrollableModel(heading: 'Bongo', imageList: bongo),
  ScrollableModel(heading: 'Gengeton', imageList: gengeton),
];
