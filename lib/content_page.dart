import 'package:book_reader/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 显示内容部分
class ContentPage extends StatefulWidget {
  // 定义page滑动的回调
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;

  const ContentPage({Key key, this.onPageChanged, this.contentPageController}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  static List<Color> _colors = [
    Colors.blue,
    Colors.lightGreen,
    Colors.amberAccent,
    Colors.orange
  ];

  PageController _pageController = PageController(
    viewportFraction: 0.8 // 设置视图比例
  );

  @override
  void initState() {
    // TODO: implement initState
    if (widget.contentPageController != null) {
      widget.contentPageController._pageController = this._pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 搜索栏 appbar
        new CustomAppBar(),
        // 内容栏
        // 使用Expanded权重来分配子View的空间占比
        // 高度撑开，否则在column中没有指定高度会报错
        new Expanded(
            child: new PageView(
              controller: _pageController,
              onPageChanged: widget.onPageChanged,
              children: <Widget>[
                _wrapItem(0),
                _wrapItem(1),
                _wrapItem(2),
                _wrapItem(3),
              ],
            ),
        ),

      ],
    );
  }

  Widget _wrapItem(int index) {
    return new Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(color: _colors[index]),
        ),
    );
  }

  /// 状态栏样式-沉浸式
  _statusBar() {
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent, // 沉浸式
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );

    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

/// 内容区域控制器
class ContentPageController {
    PageController _pageController;

    void jumpToPage(int page) {
      _pageController?.jumpToPage(page);
    }
}