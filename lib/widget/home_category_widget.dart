import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategoryWidget extends StatelessWidget {
  HomeCategoryWidget(this.categoryList);

  final List categoryList;

  Widget _gridViewItem(BuildContext context, item) {
    return Column(
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){print('click home category');},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              item['images'],
              width: ScreenUtil().setWidth(60),
              height: ScreenUtil().setHeight(60),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(item['text']),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(220),
      //padding: EdgeInsets.all(10),
      //alignment: Alignment.topCenter,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        controller: ScrollController(keepScrollOffset: false),
        crossAxisSpacing: 15,
        //mainAxisSpacing: 1,
        crossAxisCount: 5,
        padding: EdgeInsets.all(0),
        children: categoryList.map((item) {
          return _gridViewItem(context, item);
        }).toList(),
      ),
    );
  }
}
