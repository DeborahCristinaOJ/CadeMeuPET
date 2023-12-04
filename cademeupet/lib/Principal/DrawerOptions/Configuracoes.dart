import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Configuracoes(),
    );
  }
}

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 154, 71),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildConfiguracaoItem(
            context,
            'Privacidade e Segurança',
            () {
              print('Opção 1 selecionada');
            },
          ),
          _buildConfiguracaoItem(
            context,
            'Ajuda e Contato',
            () {
              print('Opção 2 selecionada');
            },
          ),
          _buildConfiguracaoItem(
            context,
            'Excluir conta',
            () {
              print('Opção 3 selecionada');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildConfiguracaoItem(
      BuildContext context, String title, VoidCallback onPressed) {
    return ListTile(
      title: Text(title,
          style: TextStyle(
              color: Color.fromARGB(255, 139, 53, 12),
              fontWeight: FontWeight.bold)),
      onTap: onPressed,
    );
  }
}
