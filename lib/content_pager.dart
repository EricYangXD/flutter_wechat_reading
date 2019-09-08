import 'package:beauty_flutter/card_changan.dart';
import 'package:beauty_flutter/card_free.dart';
import 'package:beauty_flutter/card_post.dart';
import 'package:beauty_flutter/card_test.dart';
import 'package:beauty_flutter/card_recommend.dart';
import 'package:beauty_flutter/card_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_appbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
//构造方法{可选参数,可以通过widget调用}
  const ContentPager({Key key, this.onPageChanged,this.contentPagerController}) :
        /*初始化列表*/super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController=PageController(
    /*视图比例*/
    viewportFraction: 0.8
  );

  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
    Colors.yellow,
  ];
  //初始化时把当前的pageController赋值给contentPagerController
  @override
  void initState() {
    if(widget.contentPagerController!=null){
      widget.contentPagerController._pageController=_pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appbar
        CustomAppbar(),
        Expanded(
            child: PageView(
              onPageChanged: widget.onPageChanged,
              controller: _pageController,
          children: <Widget>[
            _wrapItem(CardRecommend()),
            _wrapItem(CardShare()),
            _wrapItem(CardFree()),
            _wrapItem(CardChangan()),
            _wrapItem(CardPost()),
          ],
        ))
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }
  _statusBar(){
    //黑色沉浸式状态栏，基于SystemUiOverlayStyle.dark修改了statusBarColor
    SystemUiOverlayStyle uiOverlayStyle=SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      //安卓沉浸式状态栏
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    //安卓沉浸式状态栏
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

//内容区域控制器 Tab与内容区域联动
class ContentPagerController{
  PageController _pageController;
  void jumpToPage(int page){
    _pageController?.jumpToPage(page);
  }
}
