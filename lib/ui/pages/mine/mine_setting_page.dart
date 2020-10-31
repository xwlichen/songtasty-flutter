import 'package:flutter/material.dart';

class MineSettingPage extends StatefulWidget {
  @override
  _MineSettingPageState createState() => new _MineSettingPageState();
}

class _MineSettingPageState extends State<MineSettingPage> {
  @override
  Widget build(BuildContext context) {


    return _buildView();
  }

  Widget _buildView() {
    return Scaffold(
      body: Center(
        child: Text(
          " SETTING 1",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
