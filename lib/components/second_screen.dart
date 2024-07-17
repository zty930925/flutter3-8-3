import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton(
        child: Text('彈回主頁'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
