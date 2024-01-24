import 'package:flutter/material.dart';

class MonthDateBox extends StatefulWidget{
  const MonthDateBox({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MonthDateBoxState createState() => _MonthDateBoxState();
}

class _MonthDateBoxState extends State<MonthDateBox> {
  String deMes = '';
  String deAno = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: BorderRadius.circular(30.0)),
          width: 33 * MediaQuery.of(context).size.width /100,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(deMes,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            PopupMenuButton(
              icon: const Icon(Icons.arrow_drop_down),
              onSelected: (value) {
                setState(() {
                  deMes = value;
                });
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 'JAN', child: Text("Janeiro")),
                const PopupMenuItem(
                    value: 'FEV', child: Text("Fevereiro")),
                const PopupMenuItem(
                    value: 'MAR', child: Text("Março")),
                const PopupMenuItem(
                    value: 'ABR', child: Text("Abril")),
                const PopupMenuItem(
                    value: 'MAI', child: Text("Maio")),
                const PopupMenuItem(
                    value: 'JUN', child: Text("Junho")),
                const PopupMenuItem(
                    value: 'JUL', child: Text("Julho")),
                const PopupMenuItem(
                    value: 'AGO', child: Text("Agosto")),
                const PopupMenuItem(
                    value: 'SET', child: Text("Setembro")),
                const PopupMenuItem(
                    value: 'OUT', child: Text("Outubro")),
                const PopupMenuItem(
                    value: 'NOV', child: Text("Novembro")),
                const PopupMenuItem(
                    value: 'DEZ', child: Text("Dezembro")),
              ],
            ),
          ],
        ),
      )));
  }
}

class YearDateBox extends StatefulWidget{
  const YearDateBox({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _YearDateBoxState createState() => _YearDateBoxState();
}

class _YearDateBoxState extends State<YearDateBox> {
  String deMes = '';
  String deAno = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: BorderRadius.circular(30.0)),
          width: 33 *  MediaQuery.of(context).size.width / 100,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(deAno,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            PopupMenuButton(
              icon: const Icon(Icons.arrow_drop_down),
              onSelected: (value) {
                setState(() {
                  deAno = value;
                });
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: '2019', child: Text("2019")),
                const PopupMenuItem(
                    value: '2020', child: Text("2020")),
                const PopupMenuItem(
                    value: '2021', child: Text("2021")),
                const PopupMenuItem(
                    value: '2022', child: Text("2022")),
                const PopupMenuItem(
                    value: '2023', child: Text("2023")),
              ],
            ),
          ],
        ),
      )));
  }
}