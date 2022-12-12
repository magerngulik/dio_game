import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  Widget build(context, NavigatorController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [MainScreensView(), ProfileScreensView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          onTap: (index) {
            controller.selectedIndex = index;
            controller.update();
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<NavigatorView> createState() => NavigatorController();
}
