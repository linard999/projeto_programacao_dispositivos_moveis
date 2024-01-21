import 'package:flutter/material.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({super.key});

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajuda"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade900,
      ),
      body: Text("Adicione os widgets da tela nesse arquivo .dart")
    );
  }
}