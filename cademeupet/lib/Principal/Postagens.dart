import 'package:cademeupet/Principal/DerivadoDePostagens/VerMais.dart';
import 'package:cademeupet/Principal/DrawerOptions/Chat.dart';
import 'package:cademeupet/Principal/DrawerOptions/Configuracoes.dart';
import 'package:cademeupet/Principal/DrawerOptions/Doacao.dart';
import 'package:cademeupet/Principal/DrawerOptions/Perfil.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cademeupet/Principal/DrawerOptions/Parceiros.dart';

class Postagens extends StatefulWidget {
  @override
  State<Postagens> createState() => _PostagensState();
}

class _PostagensState extends State<Postagens> {
  int _currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  double screenWidth = 0;

  String query = '';

  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  final List<String> _images = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
  ];

  final List<InstagramPost> posts = [
    InstagramPost(
      title: 'Cão macho preto e branco',
      image: 'assets/images/cat1.jpg',
    ),
    InstagramPost(
      title: 'Gato fêmea escaminha laranja e preta',
      image: 'assets/images/dog2.jpg',
    ),
    InstagramPost(
      title: 'Gato macho laranja',
      image: 'assets/images/dog2.jpg',
    ),
    InstagramPost(
      title: 'Teste',
      image: 'assets/images/cat1.jpg',
    ),
    InstagramPost(
      title: 'Teste',
      image: 'assets/images/dog2.jpg',
    ),
    InstagramPost(
      title: 'Teste',
      image: 'assets/images/cat1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(190, 255, 131, 29),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: AlignmentDirectional.center,
                transformAlignment: AlignmentDirectional.center,
                child: UserAccountsDrawerHeader(
                  currentAccountPictureSize: Size(60, 60),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(190, 255, 131, 29),
                  ),
                  arrowColor: Color.fromARGB(255, 139, 53, 12),
                  accountName: Text(
                    'Deborah',
                    style: TextStyle(
                      color: Color.fromARGB(255, 139, 53, 12),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    'email@gmail.com.br',
                    style: TextStyle(
                      color: Color.fromARGB(255, 139, 53, 12),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 139, 53, 12),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pata.png'),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 20,
                ),
                ListTile(
                  hoverColor: Colors.white,
                  iconColor: Color.fromARGB(255, 139, 53, 12),
                  textColor: Color.fromARGB(255, 139, 53, 12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Perfil(),
                      ),
                    );
                  },
                  title: Text('Perfil'),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  hoverColor: Colors.white,
                  iconColor: Color.fromARGB(255, 139, 53, 12),
                  textColor: Color.fromARGB(255, 139, 53, 12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Chat(),
                      ),
                    );
                  },
                  title: Text('Chat'),
                  leading: Icon(Icons.chat),
                ),
                ListTile(
                  hoverColor: Colors.white,
                  iconColor: Color.fromARGB(255, 139, 53, 12),
                  textColor: Color.fromARGB(255, 139, 53, 12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Configuracoes(),
                      ),
                    );
                  },
                  title: Text('Configurações'),
                  leading: Icon(Icons.build),
                ),
                Container(
                  height: 320,
                ),
                Divider(
                  color: Color.fromARGB(190, 255, 131, 29),
                ),
                ListTile(
                  hoverColor: Colors.white,
                  iconColor: Color.fromARGB(255, 139, 53, 12),
                  textColor: Color.fromARGB(255, 139, 53, 12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Parceiros(),
                      ),
                    );
                  },
                  title: Text('Conheça nossos parceiros'),
                  leading: Icon(Icons.diamond),
                ),
                ListTile(
                  hoverColor: Colors.white,
                  iconColor: Color.fromARGB(255, 139, 53, 12),
                  textColor: Color.fromARGB(255, 139, 53, 12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Doacao(),
                      ),
                    );
                  },
                  title: Text('Faça uma doação'),
                  leading: Icon(Icons.favorite),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text(
            "Postagens",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(171, 255, 145, 55),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(children: [
              Container(
                color: Color.fromARGB(255, 255, 182, 121),
                child: CarouselSlider(
                  items: _images.map((item) {
                    return SizedBox(
                      width: 800,
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 20 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  carouselController: buttonCarouselController,
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _images.asMap().entries.map((entry) {
                int index = entry.key;
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? const Color.fromARGB(189, 185, 90, 11)
                          : const Color.fromARGB(190, 255, 131, 29),
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              height: 10,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 220,
                        height: 250,
                        child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: buildPostCard(posts[index]),
                        ),
                      );
                    },
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return buildPostCard(posts[index]);
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(
          color: Color.fromARGB(190, 255, 131, 29),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(255, 255, 182, 121),
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              onPressed: () {},
              label: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 139, 53, 12),
                        ),
                      ),
                      Text(
                        'Reporte desaparecimentos',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 139, 53, 12)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPostCard(InstagramPost post) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 410,
        color: Color.fromARGB(255, 255, 182, 121),
        child: Column(
          children: <Widget>[
            Image.asset(post.image),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(post.title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 139, 53, 12),
                      fontWeight: FontWeight.bold)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.place,
                          color: Color.fromARGB(255, 139, 53, 12)),
                      Text('Independência, BH',
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 53, 12))),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(15, 10, 15, 10),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 139, 53, 12),
                      ),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerMais(
                                  title: 'Mais Informações',
                                  nomeDaPessoa: "Usuario",
                                )));
                  },
                  child: Text('Ver mais'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramPost {
  final String title;
  final String image;

  InstagramPost({required this.title, required this.image});
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Resultados para: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? ['Gato', 'Cachorro', 'Belo Horizonte']
        : ['Resultado 1', 'Resultado 2', 'Resultado 3'];

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
