import 'package:cademeupet/Principal/Login%20e%20Cadastro/Cadastro.dart';
import 'package:cademeupet/Principal/Postagens.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _incrementCounter() {
    setState(() {});
  }

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
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 154, 71),
            title: Text(
              'Cadê Meu PET?',
              style: TextStyle(color: Colors.white, fontFamily: 'Arvo'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 1200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/003/130/300/non_2x/dog-and-cat-paw-pattern-background-free-vector.jpg',
                      scale: 30,
                    ),
                    fit: BoxFit.fitWidth,
                    repeat: ImageRepeat.repeat,
                    filterQuality: FilterQuality.none,
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 255, 145, 54),
                      BlendMode.overlay,
                    ),
                    opacity: 1000,
                  ),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: SizedBox(
                        width: 450,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                              child: Text(
                                'Bem-vindo!',
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 231, 212),
                                ),
                              ),
                            ),
                            Container(
                              height: 340,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 154, 71),
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 250, 248),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                    blurStyle: BlurStyle.outer,
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Faça login',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 231, 212),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.email,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      hintText: 'exemplo@gmail.com.br',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      labelText: 'E-mail',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 183, 98, 58),
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.key,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      helperStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      hintText: '123456',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 183, 98, 58),
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                      padding: MaterialStateProperty.all(
                                        EdgeInsets.fromLTRB(60, 17, 60, 17),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Postagens(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Entrar',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 53, 12),
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                        style: ButtonStyle(
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)))),
                                            overlayColor:
                                                MaterialStatePropertyAll(
                                                    Color.fromARGB(
                                                        96, 255, 200, 129))),
                                        onPressed: () {},
                                        child: Text(
                                          'Esqueci a senha',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 139, 53, 12)),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                              child: Expanded(
                                child: Container(
                                  height: 112,
                                  width: 800,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 154, 71),
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 255, 250, 248),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 0),
                                        blurStyle: BlurStyle.outer,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Ainda não tem uma conta?'),
                                          TextButton(
                                            style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)))),
                                              padding:
                                                  MaterialStateProperty.all(
                                                EdgeInsets.fromLTRB(
                                                    15, 10, 15, 10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cadastro(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Cadastre-se',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 139, 53, 12),
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
