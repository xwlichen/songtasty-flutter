import 'package:flutter/material.dart';

class MineMainPage extends StatefulWidget{
  @override
  _MineMianPageState  createState() =>new _MineMianPageState();

}

class _MineMianPageState extends State<MineMainPage>{
  @override
  Widget build(BuildContext context) {

    return _buildView();
  }

  Widget _buildView() {
    return new Scaffold(
      appBar: new AppBar(

        title:  SafeArea(
          child: Text("我的"),
        )
      ),
      body: Center(
        child: Text(
          " MINE ",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}