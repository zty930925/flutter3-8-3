import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //要運用drawer時，必須要有一個appBar，這樣才能執行
      appBar: AppBar(),
      //放入/調用先前準備好的CommonDrawer
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton(
        child: Text('切換到第二頁'),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
      ),
    );
  }
}
