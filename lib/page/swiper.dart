import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> list = [
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190508%2F18%2F1557312058-zObtpAiXgK.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613893896&t=99604a2cfef4b0c723443a48d4713494'
    },
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190508%2F18%2F1557312058-zObtpAiXgK.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613893896&t=99604a2cfef4b0c723443a48d4713494'
    },
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190508%2F18%2F1557312058-zObtpAiXgK.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613893896&t=99604a2cfef4b0c723443a48d4713494'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              // child: Swiper(
              //   itemBuilder: (BuildContext context, int index) {
              //     return Image.network(
              //       list[index]['url'],
              //       fit: BoxFit.fill,
              //     );
              //   },
              //   itemCount: list.length,
              //   pagination: SwiperPagination(),
              //   // control: SwiperControl(),
              //   autoplay: true,
              // ),
              child: Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                          startIndex: -1, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                    new Offset(-370.0, -40.0),
                    new Offset(0.0, 0.0),
                    new Offset(370.0, -40.0)
                  ]),
                  itemWidth: 300.0,
                  itemHeight: 200.0,
                  itemBuilder: (context, index) {
                    return new Container(
                      color: Colors.grey,
                      child: new Center(
                        child: new Text("$index"),
                      ),
                    );
                  },
                  itemCount: 10),
            ),
          ),
          Text('我是文本'),
        ],
      ),
    );
  }
}
