import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  late Color _backgroundColor;
  late Color _textColor;

  late String _backgroundName;
  late String _textName;

  ColorCard(
      {required String backgroundName,
      required String textName,
      required Color backgroundColor,
      required Color textColor}) {
    _backgroundColor = backgroundColor;
    _textColor = textColor;
    _backgroundName = backgroundName;
    _textName = textName;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: _backgroundColor,
        ),
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _backgroundName,
                      style: TextStyle(
                        color: _textColor,
                      ),
                    ),
                    Text(
                      "#${_backgroundColor.value.toRadixString(16).substring(2).toUpperCase()}",
                      style: TextStyle(
                        color: _textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _textName,
                      style: TextStyle(
                        color: _textColor,
                      ),
                    ),
                    Text(
                      "#${_textColor.value.toRadixString(16).substring(2).toUpperCase()}",
                      style: TextStyle(
                        color: _textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
