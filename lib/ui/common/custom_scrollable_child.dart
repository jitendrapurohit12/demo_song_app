import 'package:demo_song_app/constants/constant.dart';
import 'package:demo_song_app/model/scrollable_model.dart';
import 'package:flutter/material.dart';

class CustomScrollableChild extends StatelessWidget {
  final ScrollableModel model;

  const CustomScrollableChild({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              children: <Widget>[
                Text(model.heading, style: scrollableTitleStyle(context)),
                Spacer(),
                Text(model.trailing),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 18)
              ],
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              for (int i = 0; i < model.imageList.length; i++)
                Padding(
                  padding: EdgeInsets.only(left: i == 0 ? 16.0 : 8),
                  child: Container(
                    width: 180,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            model.imageList[i].imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(width: 4),
                            Expanded(
                                child: Text(model.imageList[i].title,
                                    style: imageTitleStyle(context))),
                            Expanded(
                                child: Text(
                              model.imageList[i].time,
                              style: imageTimeStyle(context),
                              textAlign: TextAlign.end,
                            )),
                            SizedBox(width: 4),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ]),
          ),
        ],
      ),
    );
  }
}
