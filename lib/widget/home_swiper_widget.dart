import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeSwiperWidget extends StatelessWidget {
  HomeSwiperWidget(this._swiperImages);

  final List _swiperImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(300),
      child: Swiper(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage.assetNetwork(
            placeholder: 'images/swiper.png',
            image: _swiperImages[index],
            fit: BoxFit.fill,
          );
        },
        pagination: SwiperPagination(
          // 分页指示器
            alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 5), // 距离调整
            builder: DotSwiperPaginationBuilder(
              // 指示器构建
                space: ScreenUtil().setWidth(5),
                // 点之间的间隔
                //size: ScreenUtil().setWidth(10),
                // 没选中时的大小
                activeSize: ScreenUtil().setWidth(12),
                // 选中时的大小
                color: Colors.black54,
                // 没选中时的颜色
                activeColor: Colors.white)),
        // 选中时的颜色
        control: new SwiperControl(color: Colors.pink),
        // 页面控制器 左右翻页按钮
        //scale: 0.95, // 两张图片之间的间隔
      ),
    );
  }
}
