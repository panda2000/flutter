import 'package:flutter/material.dart';
import 'package:flutter_cctest_app/presenter/myList.dart';
import 'package:flutter_cctest_app/view/orders/DataTableDemo.dart';

void main() => runApp( CcTest() );

class CcTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "JSON test",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: myList()
    );
  }

}