import 'package:flutter/material.dart';
import 'package:flutterDemo/page/button.dart';
import 'package:flutterDemo/page/checkBox.dart';
import 'package:flutterDemo/page/dateTime.dart';
import 'package:flutterDemo/page/dialog.dart';
import 'package:flutterDemo/page/form.dart';
import 'package:flutterDemo/page/formDemoPage.dart';
import 'package:flutterDemo/page/formPage.dart';
import 'package:flutterDemo/page/http.dart';
import 'package:flutterDemo/page/isShow.dart';
import 'package:flutterDemo/page/productInfoPage.dart';
import 'package:flutterDemo/page/productPage.dart';
import 'package:flutterDemo/page/radioPage.dart';
import 'package:flutterDemo/page/screen.dart';
import 'package:flutterDemo/page/searchPage.dart';
import 'package:flutterDemo/page/WHfit.dart';
import 'package:flutterDemo/page/swiper.dart';
import 'package:flutterDemo/page/tabBarController.dart';
import 'package:flutterDemo/page/tabBarDemoPage.dart';
import 'package:flutterDemo/page/tabsPage.dart';
import 'package:flutterDemo/page/user.dart';
import 'package:flutterDemo/page/user/login.dart';
import 'package:flutterDemo/page/user/registerFirst.dart';
import 'package:flutterDemo/page/user/registerSecond.dart';
import 'package:flutterDemo/page/user/registerThree.dart';

final routes = {
  '/': (context) => TabsPage(),
  '/form': (context) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context) => Product(),
  '/productInfo': (context, {arguments}) => ProductInfo(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThree': (context) => RegisterThreePage(),
  '/tabBarDemo': (context) => TabBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UsersPage(),
  '/button': (context) => ButtonPage(),
  '/form2': (context) => Form2Page(),
  '/checkBox': (context) => CheckBoxPage(),
  '/radio': (context) => RadioPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/dateTime': (context) => DateTimePage(),
  '/swiper': (context) => SwiperPage(),
  '/dialog': (context) => DialogPage(),
  '/WHfit': (context) => WHfitPage(),
  '/screen': (context) => ScreenPage(),
  '/http': (context) => HttpPage(),
  '/isShow': (context) => IsShowPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
