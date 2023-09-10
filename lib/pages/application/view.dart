import 'package:chatty/pages/contact/index.dart';
import 'package:chatty/pages/profile/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chatty/common/values/colors.dart';
import '../message/view.dart';
import 'index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildPageView() {
      return PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: controller.handlePageChanged,
        children: [
          MessagePage(),
          ContactPage(),
          ProfilePage()
        ],
      );
    }

    Widget _buildBottomNavigationBar() {
      return Obx(() => BottomNavigationBar(
            items: controller.bottomTabs,
            currentIndex: controller.state.page,
            type: BottomNavigationBarType.fixed,
            onTap: controller.handleNavBarTap,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedItemColor: AppColors.tabBarElement,
            selectedItemColor: AppColors.thirdElementText,
          ));
    }

    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
