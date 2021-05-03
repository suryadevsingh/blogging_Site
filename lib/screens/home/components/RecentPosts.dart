import 'package:bloggingsite/constants.dart';
import 'package:flutter/material.dart';

import 'RecentPostCard.dart';
import 'SideBarContainer.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/recent_1.png",
            title: "Our “Secret” Formula to Online Workshops",
            press: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/recent_2.png",
            title: "Digital Product Innovations from Warsaw with Love",
            press: () {},
          ),
        ],
      ),
    );
  }
}
