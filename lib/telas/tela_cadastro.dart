import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projeto_programacao_dispositivos_moveis/api/signup_service.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  

  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    
    CustomTextField emailField = CustomTextField(labelText: 'e-mail', isObscure: false);
    CustomTextField passwordField = CustomTextField(labelText: 'senha', isObscure: true);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Cadastro', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8*contextSize.width/100, right: 8*contextSize.width/100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: emailField,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: passwordField,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async{
                    String resposta = await SignUp.signUp(emailField.controller.text, passwordField.controller.text);
                    dynamic res = jsonDecode(resposta);
                    if(res['error'] != null){
                      String message = res['error']['message'];
                      if(message == 'INVALID_EMAIL'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email inválido!')));
                      }
                      else if(message == 'EMAIL_EXISTS'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email já cadastrado!')));
                      }
                      else if(message == 'WEAK_PASSWORD : Password should be at least 6 characters') {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Senha deve ter no mínimo 6 caracteres!')));
                      }
                      else if(message == 'MISSING_PASSWORD'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Senha não informada!')));
                      }
                      else if(message == 'MISSING_EMAIL'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email não informado!')));
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                      }
                      passwordField.controller.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Usuário criado com sucesso!')));
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Cadastrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, required this.labelText, required this.isObscure});

  final String labelText;
  final bool isObscure;
  final TextEditingController controller = TextEditingController();

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  
  bool _visibility = false;

  void _toggleVisibility() {
    if(widget.isObscure){
      setState(() {
        _visibility = !_visibility;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        labelText: widget.labelText,
        suffixIcon: widget.isObscure ? IconButton(
          icon: Icon(_visibility ? Icons.visibility : Icons.visibility_off),
          onPressed: _toggleVisibility,
        ) : null,
      ),
      obscureText: widget.isObscure && !_visibility,
      controller: widget.controller,
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
    );
  }
}
