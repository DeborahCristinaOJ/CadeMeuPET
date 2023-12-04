import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Parceiros extends StatefulWidget {
  @override
  _ParceirosState createState() => _ParceirosState();
}

class _ParceirosState extends State<Parceiros> {
  int _currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  double screenWidth = 0;

  final List<String> _images = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
  ];

  final List<InstagramPost> posts = [
    InstagramPost(
      title: 'Ong GPA',
    ),
    InstagramPost(
      title: 'Petshop Cão Feliz',
    ),
    InstagramPost(
      title: 'Petshop Localize seu Cão',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(190, 255, 131, 29),
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
                  'Conheça nossos parceiros',
                  style: TextStyle(color: Colors.white, fontFamily: 'Arvo'),
                ),
              ),
            ],
          ),
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
    );
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
                      Text('Belo Horizonte',
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
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  'Formas de Contato',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.phone,
                                      size: 30.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'Telefone: (99) 9999-9999',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.email,
                                      size: 30.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'E-mail: exemplo@email.com',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
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

  InstagramPost({required this.title});
}
