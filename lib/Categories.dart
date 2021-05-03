import 'package:flutter/material.dart';

import 'Category.dart';
import 'SideBarContainer.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Artificial Intelligence',
            numOfItems: 3,
            press: () {},
          ),
          Category(
            title: 'Augmented reality',
            numOfItems: 4,
            press: () {},
          ),
          Category(
            title: 'Development',
            numOfItems: 10,
            press: () {},
          ),
          Category(
            title: 'Flutter UI',
            numOfItems: 18,
            press: () {},
          ),
          Category(
            title: 'Technology',
            numOfItems: 12,
            press: () {},
          ),
          Category(
            title: 'UI/UX Design',
            numOfItems: 8,
            press: () {},
          ),
        ],
      ),
    );
  }
}
