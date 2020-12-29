import 'package:flutter/material.dart';

class MineMainPage extends StatefulWidget {
  @override
  _MineMianPageState createState() => new _MineMianPageState();
}

class _MineMianPageState extends State<MineMainPage> {
  @override
  Widget build(BuildContext context) {
    return _buildView();
  }

  Widget _buildView() {
    return SafeArea(
      top: false,
        child: Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Text(
          " MINE 1",
          style: TextStyle(color: Colors.black),
        ),
      ),
    )
    );
  }
}
