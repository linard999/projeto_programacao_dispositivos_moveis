import 'package:flutter/material.dart';

class TelaDados extends StatefulWidget {
  const TelaDados({super.key});

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade900,
      ),
      body: Text("Adicione os widgets da tela nesse arquivo .dart")
    );
  }
}
