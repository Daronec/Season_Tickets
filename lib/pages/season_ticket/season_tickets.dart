import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:season_ticket/source/constance.dart';
import 'package:season_ticket/widgets/app_button.dart';

class SeasonTicket extends StatelessWidget {
  const SeasonTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataTable(
              columns: columnNames
                  .map(
                    (cellName) => DataColumn(
                      label: Text(
                        cellName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color.fromRGBO(63, 74, 86, 1),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              rows: subscriptionList
                  .map(
                    (item) => DataRow(
                      cells: [
                        DataCell(
                          Text(item.name ?? ''),
                        ),
                        DataCell(
                          Text(item.countTeeth?.toString() ?? ''),
                        ),
                        DataCell(
                          Text('${item.limit?.toString() ?? '0'} год'),
                        ),
                        DataCell(
                          Text(item.priceFrom12?.toString() ?? ''),
                        ),
                        DataCell(
                          showEditIcon: true,
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.priceFrom18?.toString() ?? '',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(CupertinoIcons.delete),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton(
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

