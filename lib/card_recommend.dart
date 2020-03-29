

import 'package:book_reader/base_card.dart';
import 'package:flutter/material.dart';

/// 本周推荐卡片
class CardRecommend extends BaseCard {

  @override
  _CardRecommendStatus createState() => _CardRecommendStatus();
}

class _CardRecommendStatus extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subTitleColor = Color(0xffb99444);
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('送你一天无限卡.全场免费读 >');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(), // 撑满父容器
        margin: EdgeInsets.only(top: 20),
        child: Image.network(
            'http://www.devio.org/io/flutter_beauty/card_1.jpg',
            fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  topContent() {
    // TODO: implement topContent
    return super.topContent();
  }

}