import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  String photo = "assets/image.jpg";
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF052B68),
        body: GridView.count(
          crossAxisCount: currentWidth > 1344 ? 2 : 1,
          children:currentWidth > 1344 ? [
            Card(
              color: Colors.deepPurple.shade300,
              elevation: 12,
              margin: const EdgeInsets.all(60),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text("Je suis Amadou Touré, je suis un technicien en réseau informatique et télécommunication également développeur full stack web et mobile. Je réalise pour vous des solutions informatiques fiable, efficice,sécuriser et robuste. Je suis passionné par le métier de l'informatique dans lequel je m'épanouie chaque à travers la résolution défi auxquels je fais face ! Je vous met mes compétences à votre service et impatient de rélever des défis avec vous !".toUpperCase(),
                      textAlign: TextAlign.justify,
                      style:const TextStyle(
                        fontSize: 23,
                        wordSpacing: 7,
                        fontWeight: FontWeight.w800,
                      )
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blueGrey,
                elevation: 23,
                margin: const EdgeInsets.all(60),
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                      photo,
                      fit: BoxFit.cover,
                      width: 500,
                      height: 500,
                    ),
                  ),
                )
            )
          ] : [
            Card(
                color: Colors.blueGrey,
                elevation: 23,
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                      photo,
                      fit: BoxFit.cover,
                      width: 500,
                      height: 500,
                    ),
                  )
                )
            ),
            Card(
              color: Colors.deepPurple.shade300,
              elevation: 12,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Je suis Amadou Touré, je suis un technicien en réseau informatique et télécommunication également développeur full stack web et mobile. Je réalise pour vous des solutions informatiques fiable, efficice,sécuriser et robuste. Je suis passionné par le métier de l'informatique dans lequel je m'épanouie chaque à travers la résolution défi auxquels je fais face ! Je vous met mes compétences à votre service et impatient de rélever des défis avec vous !".toUpperCase(),
                      textAlign: TextAlign.justify,
                      style:const TextStyle(
                        wordSpacing: 7,
                        fontWeight: FontWeight.w800,
                      )
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
/*
CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 3,
              childAspectRatio: 3/3,
              crossAxisSpacing: 6,
              children: [
                Card(
                  elevation: 23,
                  child: Center(
                    child: Text("data"),
                  ),
                ),
                Card(
                  elevation: 23,
                  child: Center(
                    child: Text("data"),
                  ),
                ),
                Card(
                  elevation: 23,
                  child: Center(
                    child: Text("data"),
                  ),
                ),
              ],
            )
          ],
        ),
         <   >
* */