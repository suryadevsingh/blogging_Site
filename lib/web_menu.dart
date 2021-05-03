import 'package:bloggingsite/MenuController.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'WebMenuItem.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
            _controller.menuItems.length,
            (index) => WebMenuItem(
                  text: _controller.menuItems[index],
                  isActive: index == _controller.selectedIndex,
                  press: () => _controller.setMenuIndex(index),
                )),
      ),
    );
  }
}
