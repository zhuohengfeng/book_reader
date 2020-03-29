import 'package:flutter/material.dart';

/// 内容卡片页的基类
class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    // 主要的功能就是设置widget四边圆角，可以设置阴影颜色，和z轴高度
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias, // 抗锯齿
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            topContent(),
            bottomContent()
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              topTitle('')
            ],
          ),
          subTitle('')
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  topTitle(String title) {
    return Text(title, style: TextStyle(fontSize: 22),);
  }

  subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top:5),
      child: Text(title, style: TextStyle(fontSize: 11, color: subTitleColor),),
    );
  }
}
