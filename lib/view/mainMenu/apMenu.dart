import 'package:flutter/material.dart';

class apMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
           DrawerHeader(
              child: Text('АГЕНТ ПЛЮС Мобильная торговля'),
              decoration: BoxDecoration(
              color: Colors.blue,
              /*  image: new DecorationImage(
                    image: new NetworkImage('https://agentplus.tech/download/attachments/327682/atl.site.logo',
                        ),
                    fit: BoxFit.fitHeight,
                  ),*/
                ),
            ),
          ListTile(
              leading: Icon(Icons.add_box, color: Colors.blueAccent),
              title: Text('Заказы'),
              onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              },
          ),
          ListTile(
              leading: Icon(Icons.airport_shuttle, color: Colors.blueAccent),
              title: Text('Реализации'),
              onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              },
          ),
          ListTile(
              leading: Icon(Icons.assignment_late, color: Colors.deepOrangeAccent),
              title: Text('Долги'),
              onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.lightGreen),
            title: Text('Касса'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard, color: Colors.deepPurpleAccent),
            title: Text('Менчендайзернг'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
          },
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.blue),
            title: Text('Посещения'),
              onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
          },
          ),
          ListTile(
            leading: Icon(Icons.open_with, color: Colors.indigo),
            title: Text('Перемещения'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.swap_vertical_circle, color: Colors.lime),
            title: Text('Поступления/возвраты'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment, color: Colors.green),
            title: Text('Задания'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.developer_board, color: Colors.redAccent),
            title: Text('Инвентаризация'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
      ],
      ),
    );
  }

}



