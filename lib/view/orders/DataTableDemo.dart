import 'package:flutter/material.dart';
import 'package:flutter_cctest_app/model/DessertDataSource.dart';

class DataTableDemo extends StatefulWidget {
  static const String routeName = '/material/data-table';

 // @override
 // _DataTableDemoState createState() => _DataTableDemoState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DataTableDemoState();
  }
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _sortColumnIndex;
  bool _sortAscending = true;
  final DessertDataSource _dessertsDataSource = DessertDataSource();

  void _sort<T>(Comparable<T> getField(Dessert d), int columnIndex, bool ascending) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Товары'),
        actions: <Widget>[
         // MaterialDemoDocumentationButton(_DataTableDemo.routeName),
        ],
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            PaginatedDataTable(
              header: const Text('Nutrition'),
              rowsPerPage: _rowsPerPage,
              onRowsPerPageChanged: (int value) { setState(() { _rowsPerPage = value; }); },
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              //onSelectAll: _dessertsDataSource._selectAll,
              columns: <DataColumn>[
                DataColumn(
                  label: const Text('Dessert (100g serving)'),
                  onSort: (int columnIndex, bool ascending) => _sort<String>((Dessert d) => d.name, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Calories'),
                  tooltip: 'The total amount of food energy in the given serving size.',
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.calories, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Fat (g)'),
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.fat, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Carbs (g)'),
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.carbs, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Protein (g)'),
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.protein, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Sodium (mg)'),
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.sodium, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Calcium (%)'),
                  tooltip: 'The amount of calcium as a percentage of the recommended daily amount.',
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.calcium, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Iron (%)'),
                  numeric: true,
                  onSort: (int columnIndex, bool ascending) => _sort<num>((Dessert d) => d.iron, columnIndex, ascending),
                ),
              ],
              source: _dessertsDataSource,
            ),
          ],
        ),
      ),
    );
  }
}
