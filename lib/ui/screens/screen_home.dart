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
  bool _isMobile = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    _isMobile = userMobileLayout(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(_isMobile ? 124 : 124),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: _isMobile ? 39 : 20),
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
                padding: EdgeInsets.only(left: _isMobile ? 16.0 : 32),
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
                height: _isMobile ? height / 3 : height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageCover), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: _isMobile ? 16.0 : 32),
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
                        SizedBox(width: _isMobile ? 24 : 48)
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
        bottomNavigationBar: _isMobile
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_isMobile ? 30 : 60),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(
                    horizontal: _isMobile ? 24 : 48,
                    vertical: _isMobile ? 16 : 32),
                padding: EdgeInsets.symmetric(
                    horizontal: _isMobile ? 24 : 48,
                    vertical: _isMobile ? 8 : 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: bottomList
                      .map(
                        (e) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(e.icon, color: Colors.black54),
                            SizedBox(height: _isMobile ? 4 : 8),
                            Text(e.title, style: bottomBarStyle)
                          ],
                        ),
                      )
                      .toList(),
                ),
              )
            : Container(width: 0, height: 0),
      ),
    );
  }
}
