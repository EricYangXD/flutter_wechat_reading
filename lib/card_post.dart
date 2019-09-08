import 'package:beauty_flutter/base_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPost extends BaseCard {
  @override
  _CardPostState createState() =>_CardPostState();
}

class _CardPostState extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  topContent() {
    // TODO: implement topContent
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
        Text('I am a genius',style: TextStyle(color: Colors.blue,fontSize: 36),),
      ],
    );
  }
}
