import 'package:flutter/material.dart';
import 'package:data_tables/data_tables.dart';
import 'package:login/Model/users.dart';
import 'package:login/data/users.dart';

class consultertechnicien extends StatefulWidget {
  const consultertechnicien({Key? key}) : super(key: key);

  @override
  _consultertechnicienState createState() => _consultertechnicienState();
}

class _consultertechnicienState extends State<consultertechnicien> {
  late List<user> users;
  int? sortColumnIndex;
  @override
  void initSatet() {
    super.initState();
    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildDataTable(),
      );
  Widget buildDataTable() {
    final columns = ['name', 'prenom', 'zone'];

    return DataTable(
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<user> users) => users.map((user user) {
        final cells = [user.name, user.prenom, user.zone];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {}
}
