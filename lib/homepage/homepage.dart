import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodycontent = [
    Text('home'),
    Text('content'),
    Text('info'),
    Text('bio'),
    Text('info'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Give-iT'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Obx(() => Center(
            child: bodycontent.elementAt(navController.selectedIndex),
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: navController.selectedIndex,
          onTap: (index) => navController.selectedIndex = index,
          //=======designs
          backgroundColor: Color(0xFF4B2FF8),
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 35),
          unselectedIconTheme: IconThemeData(size: 30),
          unselectedItemColor: Colors.white.withOpacity(.65),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'history',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'image',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_present),
              label: 'file',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'info',
            ),
          ],
        ),
      ),
    );
  }
}

class NavController extends GetxController {
  final _selectedIndex = 0.obs;
  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;
}
