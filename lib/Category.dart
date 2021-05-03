import 'package:bloggingsite/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const Category(
      {Key key,
      @required this.title,
      @required this.numOfItems,
      @required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(TextSpan(
            text: title,
            style: TextStyle(
              color: kDarkBlackColor,
            ),
            children: [
              TextSpan(
                  text: "($numOfItems)",
                  style: TextStyle(color: kBodyTextColor))
            ])),
      ),
    );
  }
}
