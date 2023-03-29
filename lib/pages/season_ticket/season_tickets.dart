import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeasonTicket extends StatefulWidget {
  const SeasonTicket({super.key});

  @override
  State<SeasonTicket> createState() => _SeasonTicketState();
}

class _SeasonTicketState extends State<SeasonTicket> {
  List<String> seasonTicketNameList = [
    'Чистюля',
    'Хорошист',
    'Сладкоежка',
    'Хоккеист',
    'Чемпион'
  ];
  List<int> teethAmoont = [20, 34, 20, 34, 34];
  List<DataRow> rows = [
    DataRow(
      cells: [
        const DataCell(
          Text('Чистюля'),
        ),
        const DataCell(
          Text('20'),
        ),
        const DataCell(
          Text('1 год'),
        ),
        const DataCell(
          Text('7500'),
        ),
        DataCell(
          showEditIcon: true,
          Row(children: [
            const Text('7500'),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.delete),
            )
          ]),
        ),
      ],
    ),
    DataRow(
      cells: [
        const DataCell(
          Text('Хорошист'),
        ),
        const DataCell(
          Text('34'),
        ),
        const DataCell(
          Text('1 год'),
        ),
        const DataCell(
          Text('15500'),
        ),
        DataCell(
          showEditIcon: true,
          Row(children: [
            const Text('17500'),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.delete))
          ]),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DataTable(
            columns: _buildColumns([
              'Название абонемента',
              'Кол-во зубов',
              'Срок',
              'Цена, 0 - 12 лет',
              'Цена, 13 - 18 лет'
            ]),
            rows: rows,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ElevatedButton.icon(
              label: const Text('Добавить абонемент'),
              icon: const Icon(
                Icons.add,
                color: Color.fromRGBO(240, 135, 134, 1),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromRGBO(63, 74, 86, 1),
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  rows.add(_buildRows());
                });
              },
            ),
          ),
        ],
      ),
    ));
  }

  List<DataColumn> _buildColumns(List<String> cellsName) => cellsName
      .map((cellName) => DataColumn(
              label: Text(
            cellName,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(63, 74, 86, 1),
            ),
          )))
      .toList();

  DataRow _buildRows() => DataRow(
        cells: List<DataCell>.generate(
          5,
          (index) => index != 4
              ? const DataCell(
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Поле',
                      border: InputBorder.none,
                    ),
                  ),
                )
              : DataCell(
                  showEditIcon: true,
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Поле',
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.delete))
                    ],
                  ),
                ),
        ),
      );
}
