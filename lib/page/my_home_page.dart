import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/api.dart';
import 'package:shop/util/http_util.dart';
import 'package:shop/widget/home_category_widget.dart';
import 'package:shop/widget/home_swiper_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future _getSwiper() async {
    List swiperImages = [];
    try{
      Response response = await HttpUtil.dio().get(Api.homeSwiperUrl);
      var data = response.data;
      var dataData = data['data'];
      for(var item in dataData){
        swiperImages.add(item['images']);
      }
      return swiperImages;
    }catch(e){
      print(e);
    }
  }

  Future _getCatetory() async {
    //List categoryData = [];
    try{
      Response response = await HttpUtil.dio().get(Api.homeCategoryUrl);
      var data = response.data;
      var categoryData = data['data'];
      return categoryData;
    }catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('商店'),
      ),*/
      body: Container(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: _getSwiper(),
              builder: (context, snap){
                if(snap.hasData){
                  return HomeSwiperWidget(snap.data);
                }else{
                  return Container();
                }
              },
            ),
            SizedBox(height: 10,),
            FutureBuilder(
              future: _getCatetory(),
              builder: (context,snap){
                if(snap.hasData){
                  return HomeCategoryWidget(snap.data);
                }else{
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
