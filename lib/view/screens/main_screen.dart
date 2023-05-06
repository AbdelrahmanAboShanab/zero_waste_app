import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/main_controller.dart';
import '../../utils/theme.dart';


class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);


  final controller = Get.put<MainController>(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              elevation: 0,
              leading: Container(),
              backgroundColor:  Colors.grey[350],
              title:  Text(controller.title[controller.currentIndex.value],
              style: TextStyle(
                color: Colors.black
              ),),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Add product',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.category,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.category,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Update',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Details',
                ),
              ],
              onTap: (index) {
                print("indexxxvcxvxvcxvxx ${index}");
                controller.currentIndex.value = index;
              },
            ),
              body: IndexedStack(
                  index: controller.currentIndex.value,
                  children: controller.tabs.value,
              ),
          );
        },
      ),
    );
  }
}
