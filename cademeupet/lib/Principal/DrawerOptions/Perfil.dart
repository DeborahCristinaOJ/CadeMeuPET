import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  void _incrementCounter() {
    setState(() {});
  }

  String _userName = 'Usuário Exemplo';
  String _userEmail = 'exemplo@email.com';

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
          child: Column(
            children: [
              AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                centerTitle: true,
                backgroundColor: Color.fromARGB(255, 255, 154, 71),
                title: Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white, fontFamily: 'Arvo'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle,
                  color: Color.fromARGB(255, 139, 53, 12)),
              title: Text(
                'Nome de Usuário',
                style: TextStyle(
                    color: Color.fromARGB(255, 139, 53, 12),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(_userName,
                  style: TextStyle(color: Color.fromARGB(255, 139, 53, 12))),
              trailing:
                  Icon(Icons.edit, color: Color.fromARGB(255, 139, 53, 12)),
              onTap: () {},
            ),
            ListTile(
              leading:
                  Icon(Icons.email, color: Color.fromARGB(255, 139, 53, 12)),
              title: Text('Email',
                  style: TextStyle(
                      color: Color.fromARGB(255, 139, 53, 12),
                      fontWeight: FontWeight.bold)),
              subtitle: Text(_userEmail,
                  style: TextStyle(color: Color.fromARGB(255, 139, 53, 12))),
              trailing:
                  Icon(Icons.edit, color: Color.fromARGB(255, 139, 53, 12)),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading:
                  Icon(Icons.lock, color: Color.fromARGB(255, 139, 53, 12)),
              title: Text('Alterar Senha',
                  style: TextStyle(
                      color: Color.fromARGB(255, 139, 53, 12),
                      fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
