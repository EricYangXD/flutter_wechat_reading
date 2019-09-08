import 'package:beauty_flutter/base_card.dart';
import 'package:beauty_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardHaibao extends BaseCard {
  @override
  _CardHaibaoState createState() => _CardHaibaoState();
}

class _CardHaibaoState extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  topContent() {
    // TODO: implement topContent
    return Column(
      children: <Widget>[
        Text(
          "12341412",
          style: TextStyle(color: Colors.red, fontSize: 36),
        ),
        Center(
          child: Container(
            height: 500,
            child: MyListView(
                //传入所需要显示的数据
                items: new List<String>.generate(1000, (i) => 'Item $i')),
          ),
        ),
      ],
    );
  }
}

class MyListView extends StatelessWidget {
  final List<String> items;

//重写构造函数，接收传入的数据
  MyListView({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return ListView(
//      scrollDirection: Axis.horizontal,
//      children: <Widget>[
//        Container(
//          width: 180,
//          height: 200,
//          color: Colors.red,
//        ),
//        Container(
//          width: 180,
//          height: 200,
//          color: Colors.yellow,
//        ),
//        Container(
//          width: 180,
//          height: 200,
//          color: Colors.blue,
//        ),
//        Container(
//          width: 180,
//          height: 200,
//          color: Colors.green,
//        ),
//      ],
//    );
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${items[index]}"),
          );
        });
  }
}
