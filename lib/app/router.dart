import 'package:flutter/material.dart';

import 'package:flutterpage/ui/pages/mine/mine_main_page.dart';
import 'package:flutterpage/ui/pages/mine/mine_setting_page.dart';
import 'package:flutterpage/utils/log_util.dart';

import 'router_transition.dart';

class Router {
  static const String ROUTER_MINE_MIAN = "/router/mine/main";
  static const String ROUTER_MINE_SETTING = "/mine/setting";

  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case ROUTER_MINE_MIAN:
        return Right2LeftRouter(child: MineMainPage());
        break;
      case ROUTER_MINE_SETTING:
//        String params = settings.arguments;
//        LogUtil.e("params:"+params);
        return Right2LeftRouter(child: MineSettingPage());
        break;
      default:
        break;
    }
  }
}
