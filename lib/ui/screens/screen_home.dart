import 'package:demo_song_app/constants/constant.dart';
import 'package:demo_song_app/model/bottom_bar_model.dart';
import 'package:demo_song_app/model/scrollable_model.dart';
import 'package:demo_song_app/ui/common/custom_scrollable_child.dart';
import 'package:demo_song_app/ui/common/dropdown_title.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  double height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 39),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(0),
                leading:
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
                title: DropdownTitle(
                    hint: 'Select Language', options: ['A', 'B', 'C']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child:
                            Text('Category', style: smallTextStyle(context))),
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                  ),
                  isScrollable: true,
                  tabs: ['Video', 'Audio', 'Skiza']
                      .map((label) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Tab(text: "$label"),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageMarvel), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: bannerTitle(context),
                            children: [
                              TextSpan(text: 'SHE: New Album\n'),
                              TextSpan(
                                  text: 'Muthani Dummer Queen',
                                  style: smallTextStyle(context)
                                      .copyWith(height: 1.8))
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Text('Play'),
                        ),
                        SizedBox(width: 8),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 24)
                      ],
                    ),
                  ),
                ),
              ),
              for (int i = 0; i < scrollableList.length; i++)
                CustomScrollableChild(model: scrollableList[i])
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: bottomList
                .map(
                  (e) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(e.icon, color: Colors.black54),
                      SizedBox(height: 4),
                      Text(e.title, style: bottomBarStyle)
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
