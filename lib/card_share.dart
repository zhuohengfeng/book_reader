
import 'package:flutter/material.dart';

import 'base_card.dart';

/// 分享卡片页面
class CardShare extends BaseCard {

  @override
  _CardShareStatus createState() => _CardShareStatus();
}

class _CardShareStatus extends BaseCardState {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.subTitleColor = Colors.orangeAccent;
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享得联名卡');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(color: Color(0xfff6f7f9)),
        child: Column(
          children: <Widget>[
            Expanded(child: Padding(
              padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
              child: Image.network('https://www.devio.org/io/flutter_beauty/card_list.png'),
            )),
          ],
        ),
      ),
    );
  }


}