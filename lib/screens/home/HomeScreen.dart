import 'package:bloggingsite/constants.dart';
import 'package:bloggingsite/models/Blog.dart';
import 'package:bloggingsite/responsive.dart';
import 'package:flutter/material.dart';

import 'components/BlogPostCard.dart';
import 'components/Categories.dart';
import 'components/RecentPosts.dart';
import 'components/Search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
              child: Column(
            children: [
              Search(),
              SizedBox(height: kDefaultPadding),
              Categories(),
              SizedBox(height: kDefaultPadding),
              RecentPosts(),
            ],
          ))
      ],
    );
  }
}
