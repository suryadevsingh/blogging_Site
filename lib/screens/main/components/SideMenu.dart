import 'package:bloggingsite/constants.dart';
import 'package:bloggingsite/screens/home/components/DrawerItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:bloggingsite/controllers/MenuController.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(() => ListView(
              children: [
                DrawerHeader(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: SvgPicture.asset("assets/icons.logo.svg"),
                )),
                ...List.generate(
                    _controller.menuItems.length,
                    (index) => DrawerItem(
                        isActive: index == _controller.selectedIndex,
                        title: _controller.menuItems[index],
                        press: () {
                          _controller.setMenuIndex(index);
                        }))
              ],
            )),
      ),
    );
  }
}
