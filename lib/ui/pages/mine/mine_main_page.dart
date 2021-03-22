import 'package:flutter/material.dart';

class MineMainPage extends StatefulWidget {
  @override
  _MineMianPageState createState() => new _MineMianPageState();
}

class _MineMianPageState extends State<MineMainPage> {
  @override
  Widget build(BuildContext context) {
    return _buildView(context);
  }

  Widget _buildView(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
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
