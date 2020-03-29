
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_card.dart';

class CardFree extends BaseCard {

  @override
  _CardFreeStatus createState() => _CardFreeStatus();
}

const BOOK_LIST = [
  {'title':'BOOK1', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
  {'title':'BOOK2', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
  {'title':'BOOK3', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
  {'title':'BOOK4', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
  {'title':'BOOK5', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
  {'title':'BOOK6', 'cover':'https://img4.sycdn.imooc.com/szimg/5e6b4ede09bc3b4412000676-360-202.png'},
];


class _CardFreeStatus extends BaseCardState {

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('免费听书馆');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('第 108 期');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Expanded(child: _bookList(),),

            FractionallySizedBox(
              widthFactor: 1,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text('免费领取', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        padding: EdgeInsets.only(left: 20, right: 20),
        children: BOOK_LIST.map((item) {
          return _item(item);
        }).toList(),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          // 绝对布局
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network('${item['cover']}', fit: BoxFit.cover),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38
                ),
                child: Icon(Icons.play_arrow),
              )
            ],
          )
        ],
      ),
    );
  }

}