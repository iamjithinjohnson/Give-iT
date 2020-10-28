import 'package:flutter/material.dart';
import 'package:giveit/homepage/share.dart';
import 'package:giveit/profile/profile.dart';
import 'homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;

  List<Widget> list = [
    Tab(icon: Icon(Icons.history)),
    Tab(icon: Icon(Icons.apps)),
    Tab(icon: Icon(Icons.swap_calls)),
    Tab(icon: Icon(Icons.folder)),
    Tab(icon: Icon(Icons.account_circle)),
  ];

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Color(0xFF4B2FF8)),
        title: Text(
          'Give-iT',
          style:
              TextStyle(color: Color(0xFF4B2FF8), fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      bottomNavigationBar: tabbar(),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('history'),
          Text('apps'),
          Share(),
          Text('bio'),
          Profile(),
        ],
      ),
    );
  }

  TabBar tabbar() {
    return TabBar(
      indicatorColor: Colors.transparent,
      labelColor: Color(0xFF4B2FF8),
      onTap: (index) {
        // Should not used it as it only called when tab options are clicked,
        // not when user swapped
      },
      controller: _controller,
      tabs: list,
    );
  }
}
