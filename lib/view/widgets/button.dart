import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  IconData icon;
  String text;
  int color;
  Button(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          color:
              Color(icon == CupertinoIcons.cloud_download ? 0xffffffff : color),
        ),
        label: Text(
          text,
          style: TextStyle(
              color: Color(
                  icon == CupertinoIcons.cloud_download ? 0xffffffff : color)),
        ),
        style: ButtonStyle(
          side: MaterialStatePropertyAll(BorderSide(
            width: 1.0,
            color: Color(color),
          )),
          backgroundColor: MaterialStatePropertyAll(
              Color(icon == Icons.bookmark_border ? 0xffffffff : color)),
        ),
      ),
    );
  }
}
