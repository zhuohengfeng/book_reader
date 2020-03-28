import 'package:flutter/material.dart';

/// 底部导航条
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 这个脚手架组件是一个页面结构的组件，可以实现通常app页面的框架，比如导航条，侧拉菜单，顶部状态等
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x00ff00), //0xffedeef0
              Color(0xffff00), //0xffe6e7e9
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            '你点击了第 $_currentIndex 个tab',
            style: TextStyle(fontSize: 36, color: Colors.blue),
          ),
        ),
      ),
      /// 底部导航条
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // 修改状态
          setState(() {
            _currentIndex = index;
            print("你点击了第 $_currentIndex 个");
          });
        },
        items: [
          _bottomItem('本周', Icons.folder, 0),
          _bottomItem('分享', Icons.explore, 1),
          _bottomItem('免费', Icons.donut_small, 2),
          _bottomItem('长按', Icons.person, 3),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
  /// 封装底部导航条
  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _defaultColor,
      ),
      activeIcon: Icon(
        icon,
        color: _activeColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: _currentIndex != index ? _defaultColor : _activeColor,
        ),
      ),
    );
  }

}
