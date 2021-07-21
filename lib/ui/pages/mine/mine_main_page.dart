import 'package:flutter/material.dart';
import 'package:flutterpage/utils/log_util.dart';

class MineMainPage extends StatefulWidget {
  @override
  _MineMianPageState createState() => new _MineMianPageState();
}

class _MineMianPageState extends State<MineMainPage> {
  @override
  Widget build(BuildContext context) {
    LogUtil.e("top:"+(MediaQuery.of(context).padding.top).toString(),tag:"xw");
    LogUtil.e("top:11",tag:"xw");
    print("top:11");
    return _buildView(context);
  }

  Widget _buildView(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(0,50,0,0),
          child:Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "我的",
                    ),
                  ],

                ),
              ]
          ),
        )
      ),
    );

  }
}
