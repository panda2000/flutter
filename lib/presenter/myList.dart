import 'package:flutter/material.dart';
import 'package:flutter_cctest_app/model/NASAData.dart';
import 'package:flutter_cctest_app/view/mainMenu/apMenu.dart';
import 'package:flutter_cctest_app/view/orders/DataTableDemo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class myList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myListState();
  }
}

  class myListState extends State<myList> {

    List<NASAData> _nasaData = [];


    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Агент Плюс: МТ"),
          ),
          drawer: apMenu (),
          body: Container (
              child: DataTableDemo(),
          ),
          floatingActionButton: FloatingActionButton (
            child: Icon(Icons.add),
            onPressed: ()=>loadCC(),
          )
      );
    }

    List <Widget> buildView() {

        return _nasaData.map((NASAData f) =>
            Center(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      width: 300,
                      height: 600,
                      child: Text(f.explanation),
                    ),
                  ),
                ))).toList();

    }

  loadCC() async {

      final responce = await http.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY');
      if(responce.statusCode == 200) {
        print(responce.body);

        Map<String, dynamic> val = jsonDecode (responce.body) ;

        print('Howdy, ${val['copyright']}!');

        List<NASAData> tempNasaData = [];

        var record = NASAData (val['copyright'],val['date'],val['explanation'],val['title'],val['url']);
        tempNasaData.add(record);


        setState(() {
            _nasaData = tempNasaData;
          });

      }


  }

  }