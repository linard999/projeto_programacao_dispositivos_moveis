import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projeto_programacao_dispositivos_moveis/api/signin_service.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  

  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    
    CustomTextField emailField = CustomTextField(labelText: 'e-mail', isObscure: false);
    CustomTextField passwordField = CustomTextField(labelText: 'senha', isObscure: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Login', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
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
                    String resposta = await SignIn.signIn(emailField.controller.text, passwordField.controller.text);
                    dynamic res = jsonDecode(resposta);
                    print(res);
                    if(res['error'] != null){
                      String message = res['error']['message'];
                      if(message == 'TOO_MANY_ATTEMPTS_TRY_LATER'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Muitas tentativas, tente mais tarde!')));
                      } else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('E-mail ou senha incorretos!')));
                      }
                    } else {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  child: const Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastro');
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
      onTapOutside: null,
      onChanged: null,
      onEditingComplete: null,
      obscureText: widget.isObscure && !_visibility,
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      controller: widget.controller,
    );
  }
}
