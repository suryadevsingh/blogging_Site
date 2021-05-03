import 'package:bloggingsite/constants.dart';
import 'package:bloggingsite/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/SideMenu.dart';
import 'components/header.dart';
import 'package:bloggingsite/controllers/MenuController.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: HomeScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
