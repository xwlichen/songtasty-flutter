////import 'dart:js';
//
//import 'package:flutter/material.dart';
//import 'dart:ui';
//
//import 'utils/log_util.dart';
//
///// 说明：
///// 三种channel的调用已经封装在了在_onPressed和initState方法中，可以通过打开相对应的注释来打开相关方法调用
///// 需要配合在MainActivity中打开相对应的方法配合调用
//void main() => runApp(MyApp(
////  通过window.defaultRouteName获取从native传递过来的参数
//  initParams: window.defaultRouteName,
//)
////    _widgetRoute(window.defaultRouteName)
//);
//
//class MyApp extends StatelessWidget {
//  final String initParams;
//
//  MyApp({Key key, this.initParams}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter_Android_iOS混合开发',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
////        pageTransitionsTheme: PageTransitionsTheme(
////          builders: <TargetPlatform, PageTransitionsBuilder>{
////            TargetPlatform.iOS: createTransition(),
////            TargetPlatform.android: createTransition(),
////          },
////        ),
//      ),
//
//      home: _widgetRoute(initParams,context),
////       home:Navigator.of(context).push(_createRoute());
//    );
//  }
//}
//
//PageTransitionsBuilder createTransition() {
////  return FadeUpwardsPageTransitionsBuilder();
//  return MyPageTransitionsBuilder();
//}
//
/////路由转发
//Widget _widgetRoute(String route,BuildContext context) {
//  //初始化设置 LogUtil
//  LogUtil.init(tag: "xwlc", isDebug: true, maxLen: 128);
//  LogUtil.e(route);
//
//  switch (route) {
//    case "route1":
//      return route1Widget(context);
////      return Page1()
//    case "route2":
//      return route2Widget();
//    default:
//      return notFoundWidget();
//  }
//}
//
//Widget route1Widget(BuildContext context) {
//  LogUtil.e("route1Widget");
////  return Center(
////    child: Text(
////      "this is route1Widget",
////      style: TextStyle(color: Colors.red, fontSize: 20),
////    ),
////  );
//
//  return Scaffold(
//      backgroundColor: Colors.blue,
//      body: Container(
//          child: Center(
//              child: GestureDetector(
//                  child: Text("this is route1Widget",
//                      style: TextStyle(color: Colors.yellow, fontSize: 20)),
//                  onTap: ()=>
//                  {
//                    LogUtil.e("onTap"),
////                      context, new MaterialPageRoute<void>(builder: (ctx) =>  Page1()));
//                    Navigator.pushNamed(context, "/page1")
////                          Navigator.push(context, new MaterialPageRoute<void>(builder: (ctx) =>  Page1())),
//                  }
//              )
//
//          )
//      )
//  );
//}
//
//Widget route2Widget() {
//  return Center(
//    child: Text(
//      "this is route2Widget",
//      style: TextStyle(color: Colors.blue, fontSize: 20),
//    ),
//  );
//}
//
//Widget notFoundWidget() {
//  return Center(
//    child: Text(
//      "未匹配到路由",
//      style: TextStyle(fontSize: 40),
//    ),
//  );
//}
//
//Route _createRoute() {
//  return PageRouteBuilder(
//    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
//    transitionsBuilder: (context, animation, secondaryAnimation, child) {
//      var begin = Offset(0.0, 1.0);
//      var end = Offset.zero;
//      var curve = Curves.ease;
//
//      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//      return SlideTransition(
//        position: animation.drive(tween),
//        child: child,
//      );
//    },
//  );
//}
//
//class Page2 extends StatelessWidget {
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(),
//      body: Center(
//        child: Text('Page 2'),
//      ),
//    );
//  }
//}
//
//class Page1 extends StatefulWidget {
//  Widget build(BuildContext context) {
//    LogUtil.e("Page1");
//    return Scaffold(
//      appBar: AppBar(),
//      body: Center(
//        child: Text('Page 1'),
//      ),
//    );
//  }
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    throw UnimplementedError();
//  }
//}
//
//class MyPageTransitionsBuilder extends PageTransitionsBuilder {
//  @override
//  Widget buildTransitions<T>(
//      PageRoute<T> route,
//      BuildContext context,
//      Animation<double> animation,
//      Animation<double> secondaryAnimation,
//      Widget child) {
//    return ScaleTransition(
//      scale: animation,
//      child: RotationTransition(
//        turns: animation,
//        child: child,
//      ),
//    );
//  }
//}
