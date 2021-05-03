import 'package:bloggingsite/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SideBarContainer.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            hintText: "Type Here ...",
            suffixIcon: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: SvgPicture.asset("assets/icons/feather_search.svg"),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(kDefaultPadding / 2),
                ),
                borderSide: BorderSide(color: Color(0xFFCCCCCC)))),
      ),
    );
  }
}
