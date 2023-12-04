import 'package:cademeupet/Principal/Login%20e%20Cadastro/Login.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  void _incrementCounter() {
    setState(() {});
  }

  final FocusNode _passwordFocus = FocusNode();

  @override
  void dispose() {
    _passwordFocus.dispose();
    super.dispose();
  }

  bool _passwordVisible = false;
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
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
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color.fromARGB(255, 255, 154, 71),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
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
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: SizedBox(
                    width: 450,
                    child: Column(children: [
                      Container(
                        height: 420,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 154, 71),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                              'Cadastre-se',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 231, 212),
                              ),
                            ),
                            Container(
                              height: 20,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      hintText: 'Usuario123',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      labelText: 'Nome',
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
                                    style: TextStyle(color: Colors.white),
                                    controller: _passwordController,
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      prefix: IconButton(
                                        icon: Icon(
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color:
                                              Color.fromARGB(255, 139, 53, 12),
                                        ),
                                        onPressed: _togglePasswordVisibility,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.key,
                                        color: Color.fromARGB(255, 139, 53, 12),
                                      ),
                                      helperText: _passwordFocus.hasFocus
                                          ? '- Sua senha deve conter números e símbolos; \n- Mínimo de 6 (seis) caractéres;'
                                          : '',
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
                                    focusNode: _passwordFocus,
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                ],
                              ),
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
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                              child: Text(
                                'Cadastrar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 139, 53, 12),
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
