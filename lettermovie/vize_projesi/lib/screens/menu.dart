import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 232, 4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                // Profil Icon
                InkWell(
                  onTap: () {
                    // Profil sayfasına yönlendirme
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Profil Sayfasına Yönlendirme Düğmesi
                ElevatedButton(
                  onPressed: () {
                    // Profil sayfasına yönlendirme
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: Text('Profile'),
                ),
                SizedBox(
                  height: 15,
                ),
                // Film 1
                buildFilmStack(
                  'Killers of the Flower Moon',
                  'When oil is discovered in 1920s Oklahoma under Osage Nation land, the Osage people are murdered one by one - until the FBI steps in to unravel the mystery.',
                  'assets/images/kof.jpg',
                  '4.5',
                ),
                SizedBox(
                  height: 20,
                ),
                // Film 2
                buildFilmStack(
                  'Oppenheimer',
                  'The story of American scientist, J. Robert Oppenheimer, and his role in the development of the atomic bomb.',
                  'assets/images/op.jpg',
                  '4.7',
                ),buildFilmStack(
                  ' Gladiator',
                  'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
                  'assets/images/gl.jpg',
                  '4.5',
                ),
                SizedBox(
                  height: 20,
                ),buildFilmStack(
                  'Django Unchained',
                  'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.',
                  'assets/images/django.jpg',
                  '4.4',
                ),
                SizedBox(
                  height: 20,
                ),buildFilmStack(
                  'The Wolf of Wall Street',
                  'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.',
                  'assets/images/wws.jpg',
                  '4.3',
                ),
                SizedBox(
                  height: 20,
                ),
                // Diğer filmler için aynı şekilde devam edebilirsiniz.
                SizedBox(
                  height: 15,
                ),
                // Önceki Sayfaya Dönme Düğmesi
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Bu kod, bir önceki sayfaya dönmek için kullanılır.
                  },
                  child: Text('Quit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFilmStack(String title, String description, String imagePath, String rating) {
    return InkWell(
      onTap: () {
        // Film detay sayfasına yönlendirmeyi kaldırdım.
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) =>
        //         Film1Page(),
        //   ),
        // );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: Color.fromARGB(209, 1, 152, 222),
        shadowColor: Color.fromARGB(150, 157, 168, 7),
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(31),
                    topRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                  child: Image.asset(
                    imagePath,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      rating,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
