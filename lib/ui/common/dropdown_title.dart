import 'package:demo_song_app/constants/constant.dart';
import 'package:flutter/material.dart';

class DropdownTitle extends StatefulWidget {
  final String hint;
  final List<String> options;

  const DropdownTitle({Key key, this.hint, this.options}) : super(key: key);

  @override
  _DropdownTitleState createState() => _DropdownTitleState();
}

class _DropdownTitleState extends State<DropdownTitle> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 30,
            width: 150,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 40,
                  width: 200,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 86.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
              isExpanded: false,
              icon: Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration.collapsed(
                  hintText: widget.hint, hintStyle: smallTextStyle(context)),
              items: widget.options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: smallTextStyle(context),
                  ),
                );
              }).toList(),
              value: _value,
              onChanged: (s) => setState(() {
                _value = s;
              }),
            ),
          ),
        )
      ],
    );
  }
}
