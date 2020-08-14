import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/page/my_cart_page.dart';
import 'package:shop/page/my_category_page.dart';
import 'package:shop/page/my_home_page.dart';
import 'package:shop/page/my_member_page.dart';

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  final List<BottomNavigationBarItem> bottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: Icon(IconData(0xe608, fontFamily: 'iconfont')),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(IconData(0xe602, fontFamily: 'iconfont')),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(IconData(0xe619, fontFamily: 'iconfont')),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(IconData(0xe606, fontFamily: 'iconfont')),
      title: Text('我'),
    ),
  ];

  final List navigationPage = [
    MyHomePage(),
    MyCategoryPage(),
    MyCartPage(),
    MyMemberPage()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = navigationPage[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomNavigationBarItem,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = navigationPage[currentIndex];
          });
        },
      ),
      body: currentPage
    );
  }
}
