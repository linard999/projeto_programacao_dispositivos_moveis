import 'package:flutter/material.dart';

var temaEscuro = ThemeData(
  colorScheme: ColorScheme(
    primary: Colors.white,
    secondary: const Color.fromARGB(255, 31, 43, 57),
    surface: const Color.fromARGB(255, 31, 43, 57),
    background: const Color(0xFF20344d),
    error: Colors.green.shade900,
    onPrimary: Colors.green.shade900,
    onSecondary: Colors.green.shade900,
    onSurface: Colors.green.shade900,
    onBackground: Colors.green.shade900,
    onError: Colors.green.shade900,
    brightness: Brightness.dark,
  ),
);

var temaClaro = ThemeData(
  colorScheme: ColorScheme(
    primary: Colors.black,
    secondary: Colors.green.shade900,
    surface: Colors.grey.shade200,
    background: Colors.white,
    error: Colors.green.shade900,
    onPrimary: Colors.green.shade900,
    onSecondary: Colors.green.shade900,
    onSurface: Colors.green.shade900,
    onBackground: Colors.green.shade900,
    onError: Colors.green.shade900,
    brightness: Brightness.light,
  ),
);

enum TipoTema { escuro, claro }

class TemaDinamico extends ChangeNotifier {
  ThemeData tema = temaClaro;
  TipoTema _temaAtual = TipoTema.claro;
  
  void setarTema(TipoTema tipoTema) {
    tema = tipoTema == TipoTema.escuro ? temaEscuro : temaClaro;
    _temaAtual = tipoTema;
    return notifyListeners();
  }

}