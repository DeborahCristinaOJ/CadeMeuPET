import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Doacao(),
    );
  }
}

class Doacao extends StatefulWidget {
  @override
  _DoacaoState createState() => _DoacaoState();
}

class _DoacaoState extends State<Doacao> {
  final List<InstagramPost> posts = [
    InstagramPost(
      title: 'Preencha as informações para fazer uma doação',
    ),
  ];

  TextEditingController nomeController = TextEditingController();
  TextEditingController contatoController = TextEditingController();
  TextEditingController numeroCartaoController = TextEditingController();

  void processarDoacao() {
    String nome = nomeController.text;
    String contato = contatoController.text;
    String numeroCartao = numeroCartaoController.text;

    if (nome.isEmpty || contato.isEmpty || numeroCartao.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color.fromARGB(255, 167, 45, 45),
          content: Text('Por favor, preencha todos os campos.'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color.fromARGB(255, 255, 154, 71),
          content: Text('Doação feita com sucesso! A CadêMeuPET agradece!'),
        ),
      );
    }
  }

  Widget buildPostCard(InstagramPost post) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 150,
        color: Color.fromARGB(255, 255, 182, 121),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                post.title,
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 53, 12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(15, 10, 15, 10),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 139, 53, 12),
                    ),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  onPressed: () {
                    buildModelContent();
                  },
                  child: Text('Doar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void buildModelContent() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Preencha as informações para fazer uma doação',
            style: TextStyle(
              color: Color.fromARGB(255, 139, 53, 12),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 8.0),
                  Text(
                    'Nome: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Expanded(
                    child: TextField(
                      controller: nomeController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 8.0),
                  Text(
                    'Número para contato: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Expanded(
                    child: TextField(controller: contatoController),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 8.0),
                  Text(
                    'Número do cartão: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Expanded(
                    child: TextField(
                      controller: numeroCartaoController,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                processarDoacao();
                Navigator.pop(context);
              },
              child: Text('Doar'),
            ),
          ],
        );
      },
    );
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
                  'Faça uma doação',
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
          children: posts.map((post) => buildPostCard(post)).toList(),
        ),
      ),
    );
  }
}

class InstagramPost {
  final String title;

  InstagramPost({required this.title});
}
