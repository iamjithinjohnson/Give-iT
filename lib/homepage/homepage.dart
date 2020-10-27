import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodycontent = [
    Text('history'),
    Text('apps'),
    Share(),
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
              icon: Icon(Icons.apps),
              label: 'apps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_calls),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'folder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
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

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Send',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomButton(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Recieve',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 257,
            width: 72,
            decoration: BoxDecoration(
                color: Color(0xFF6D6969),
                borderRadius: BorderRadius.all(Radius.circular(70))),
          ),
        ),
        Center(
          child: Container(
            height: 95,
            width: 95,
            decoration:
                BoxDecoration(color: Color(0xFF7F6BF9), shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
